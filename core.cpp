#include "core.h"
#include <string.h>
//MixData<data_t> bgmodel[BGM_SIZE];
MixData bgmo[(BGM_SIZE / PARTS) * LEVELS];
uint8_t frame_in_glob[(IMG_SIZE / PARTS) * LEVELS];
uint8_t frame_out_glob[(IMG_SIZE / PARTS) * LEVELS];

static const int defaultNMixtures = 5;
static const int defaultHistory = 200;
static const float defaultBackgroundRatio = 0.7;
static const float defaultVarThreshold = 2.5 * 2.5;
static const float defaultNoiseSigma = 30 * 0.5;
static const float defaultInitialWeight = 0.05;

int nframes = 0;

void process(uint8_t frame_in[IMG_SIZE / PARTS],
		uint8_t frame_out[IMG_SIZE / PARTS], float learningRate,
		float backgroundRatio, float varThreshold, float noiseSigma,
		MixData bgmodel[BGM_SIZE / PARTS]) {
//#pragma HLS protocol fixed
	int x, y, k, k1, rows = HEIGHT, cols = WIDTH;
	float alpha = (float) learningRate, T = (float) backgroundRatio, vT =
			(float) varThreshold;
	MixData* mptr = bgmodel;

	const float w0 = defaultInitialWeight;
	const float sk0 = w0 / (defaultNoiseSigma * 2);
	const float var0 = defaultNoiseSigma * defaultNoiseSigma * 4;
	const float minVar = noiseSigma * noiseSigma;

	for (y = 0; y < HEIGHT / PARTS; y++) {
		const uint8_t * src = frame_in + y * rows;
		uint8_t * dst = frame_out + y * rows;

		if (alpha > 0) {
			for (x = 0; x < WIDTH; x++, mptr += K) {
				float wsum = 0;
				float pix = src[x];
				int kHit = -1, kForeground = -1;

				for (k = 0; k < K; k++) {
					float w = mptr[k].weight;
					wsum += w;
					if (w < FLT_EPSILON)
						break;
					float mu = mptr[k].mean;
					float var = mptr[k].var;
					float diff = pix - mu;
					float d2 = diff * diff;
					if (d2 < vT * var) {
						wsum -= w;
						float dw = alpha * (1.f - w);
						mptr[k].weight = w + dw;
						mptr[k].mean = mu + alpha * diff;
						var = std::max(var + alpha * (d2 - var), minVar);
						mptr[k].var = var;
						mptr[k].sortKey = w / std::sqrt(var);

						for (k1 = k - 1; k1 >= 0; k1--) {
#pragma HLS LOOP_TRIPCOUNT min=0 max=1 avg=1
							if (mptr[k1].sortKey >= mptr[k1 + 1].sortKey)
								break;
							std::swap(mptr[k1], mptr[k1 + 1]);
						}

						kHit = k1 + 1;
						break;
					}
				}

				if (kHit < 0) // no appropriate gaussian mixture found at all, remove the weakest mixture and create a new one
						{
					kHit = k = std::min(k, K - 1);
					wsum += w0 - mptr[k].weight;
					mptr[k].weight = w0;
					mptr[k].mean = pix;
					mptr[k].var = var0;
					mptr[k].sortKey = sk0;
				} else
					for (; k < K; k++){

#pragma HLS LOOP_TRIPCOUNT min=1 max=2 avg=2
wsum += mptr[k].weight;
					}

				float wscale = 1.f / wsum;
				wsum = 0;
				for (k = 0; k < K; k++) {
					wsum += mptr[k].weight *= wscale;
					mptr[k].sortKey *= wscale;
					if (wsum > T && kForeground < 0)
						kForeground = k + 1;
				}

				dst[x] = (uint8_t) (-(kHit >= kForeground));
			}
		} else {
			for (x = 0; x < WIDTH; x++, mptr += K) {
				float pix = src[x];
				int kHit = -1, kForeground = -1;

				for (k = 0; k < K; k++) {
					if (mptr[k].weight < FLT_EPSILON)
						break;
					float mu = mptr[k].mean;
					float var = mptr[k].var;
					float diff = pix - mu;
					float d2 = diff * diff;
					if (d2 < vT * var) {
						kHit = k;
						break;
					}
				}

				if (kHit >= 0) {
					float wsum = 0;
					for (k = 0; k < K; k++) {
						wsum += mptr[k].weight;
						if (wsum > T) {
							kForeground = k + 1;
							break;
						}
					}
				}

				dst[x] = (uint8_t) (kHit < 0 || kHit >= kForeground ? 255 : 0);
			}
		}
	}
}

void backsub(uint8_t frame_i[IMG_SIZE], uint8_t frame_o[IMG_SIZE],
		float learningRate, MixData bgmodel[BGM_SIZE]) {
#pragma HLS ARRAY_PARTITION variable=frame_out_glob block factor=8 dim=1
#pragma HLS ARRAY_PARTITION variable=frame_in_glob block factor=8 dim=1
#pragma HLS ARRAY_PARTITION variable=bgmo block factor=8 dim=1
#pragma HLS INTERFACE m_axi port=bgmodel
#pragma HLS INTERFACE port=return
#pragma HLS INTERFACE s_axilite port=learningRate bundle=CRTL_BUS
#pragma HLS INTERFACE m_axi depth=76800 port=frame_o offset=slave
#pragma HLS INTERFACE m_axi depth=76800 port=frame_i offset=slave
	bool needToInitialize = nframes == 0 || learningRate >= 1;

	if (needToInitialize) {
		// initialization
		nframes = 0;
		MixData tmp;
		tmp.mean = 0;
		tmp.var = 0;
		tmp.sortKey = 0;
		tmp.weight = 0;
		for (int p = 0; p < BGM_SIZE; p++){
			bgmodel[p] = tmp;
		}
	}

	++nframes;
	learningRate =
			learningRate >= 0 && nframes > 1 ?
					learningRate : 1. / std::min(nframes, defaultHistory);

	for (int x = 0; x < PARTS/LEVELS; x++) {
//#pragma HLS LOOP_FLATTEN
//#pragma HLS PIPELINE
		memcpy(bgmo, &bgmodel[x * (BGM_SIZE / PARTS)*LEVELS],sizeof(float) * LEVELS * 4 * BGM_SIZE / PARTS);
		memcpy(frame_in_glob, &frame_i[x * LEVELS * (IMG_SIZE / PARTS)],sizeof(uint8_t) * LEVELS * IMG_SIZE / PARTS);

		for (int r=0;r<LEVELS;r++){
//#pragma HLS PIPELINE
			process(&frame_in_glob[(IMG_SIZE/PARTS)*r], &frame_out_glob[(IMG_SIZE/PARTS)*r], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*r]);
		}

//#pragma HLS UNROLL factor=8
//		proces:{
//
//		process(&frame_in_glob[(IMG_SIZE/PARTS)*0], &frame_out_glob[(IMG_SIZE/PARTS)*0], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*0]);
//		process(&frame_in_glob[(IMG_SIZE/PARTS)*1], &frame_out_glob[(IMG_SIZE/PARTS)*1], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*1]);
//		process(&frame_in_glob[(IMG_SIZE/PARTS)*2], &frame_out_glob[(IMG_SIZE/PARTS)*2], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*2]);
//		process(&frame_in_glob[(IMG_SIZE/PARTS)*3], &frame_out_glob[(IMG_SIZE/PARTS)*3], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*3]);
//		process(&frame_in_glob[(IMG_SIZE/PARTS)*4], &frame_out_glob[(IMG_SIZE/PARTS)*4], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*4]);
//		process(&frame_in_glob[(IMG_SIZE/PARTS)*5], &frame_out_glob[(IMG_SIZE/PARTS)*5], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*5]);
//		process(&frame_in_glob[(IMG_SIZE/PARTS)*6], &frame_out_glob[(IMG_SIZE/PARTS)*6], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*6]);
//		process(&frame_in_glob[(IMG_SIZE/PARTS)*7], &frame_out_glob[(IMG_SIZE/PARTS)*7], learningRate,defaultBackgroundRatio, defaultVarThreshold, defaultNoiseSigma,&bgmo[(BGM_SIZE/PARTS)*7]);
//		}
		memcpy(&frame_o[x * (IMG_SIZE / PARTS) * LEVELS], frame_out_glob,sizeof(uint8_t) * LEVELS * IMG_SIZE / PARTS);
		memcpy(&bgmodel[x * (BGM_SIZE / PARTS) * LEVELS], bgmo,sizeof(float) * LEVELS * 4 * BGM_SIZE / PARTS);
	}
}
