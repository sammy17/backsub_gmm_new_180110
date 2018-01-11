#include <iostream>
#include <cmath>
#include <cfloat>
#include <hls_math.h>
#include <ap_int.h>

using namespace std;

#define WIDTH 320
#define HEIGHT 240
#define IMG_SIZE WIDTH*HEIGHT
#define K  2 // no of gaussian mxitures
#define BGM_SIZE IMG_SIZE*K
#define PARTS 240
#define LEVELS 8
//typedef ap_fixed<24,16> data_t;

//template<typename VT> struct MixData
//{
//    float sortKey;
//    float weight;
//    VT mean;
//    VT var;
//};

struct MixData
{
    float sortKey;
    float weight;
    float mean;
    float var;
};

typedef float data_t;
//
//void backsub(uint8_t frame_in[IMG_SIZE],
//             uint8_t frame_out[IMG_SIZE],
//             float learningRate);
void backsub(uint8_t frame_in[IMG_SIZE],
             uint8_t frame_out[IMG_SIZE],
             float learningRate, MixData bgmodel[BGM_SIZE]);

//void process(uint8_t frame_in[IMG_SIZE],
//             uint8_t frame_out[IMG_SIZE],
//             float learningRate,
//             float backgroundRatio,
//             float varThreshold,
//             float noiseSigma);

void process(uint8_t frame_in[IMG_SIZE],
             uint8_t frame_out[IMG_SIZE],
             float learningRate,
             float backgroundRatio,
             float varThreshold,
             float noiseSigma,
			 MixData bgmodel[BGM_SIZE]);
