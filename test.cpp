#include <opencv2/opencv.hpp>
#include <iostream>
#include <fstream>
#include <climits>
#include <iostream>
#include "core.h"

cv::Mat outImg1(HEIGHT, WIDTH, CV_8UC1);
cv::Mat IMG1(HEIGHT, WIDTH, CV_8UC1);


uint8_t frame_in[IMG_SIZE];
uint8_t frame_out[IMG_SIZE] = {0};

float bgmodel[4*BGM_SIZE];


int main()
{


    cv::Mat img_t;

    cv::VideoCapture cap;
    cv::Mat frame;
    cap.open("output.avi");
    cap.set(CV_CAP_PROP_FRAME_WIDTH,320);
    cap.set(CV_CAP_PROP_FRAME_HEIGHT,240);
    cap.set(CV_CAP_PROP_FPS,30);
    cap.set(CV_CAP_PROP_CONVERT_RGB,true);
//cap.open("e.mp4");

    if (!cap.isOpened()) {
        std::cerr << "ERROR! Unable to open camera\n";
        return -1;
    }




    bool init = true;

    for (;;) {
        // wait for a new frame from camera and store it into 'frame'
        cap.read(frame);

        if (frame.empty()) {
            std::cerr << "ERROR! blank frame grabbed\n";
            break;
        }
        cv::cvtColor(frame, IMG1, CV_BGR2GRAY);

        memcpy(frame_in, IMG1.data, IMG_SIZE);

        bgsub(frame_in,frame_out,init, bgmodel);

        if(init) init = false;

        memcpy(outImg1.data, frame_out, IMG_SIZE);

        cv::namedWindow("Live1");
        cv::imshow("Live1", IMG1);

        cv::namedWindow("Live2");
        cv::imshow("Live2", outImg1);
//		cv::waitKey(0);
        if (cv::waitKey(1) >= 0)
            break;

    }

    return 0;

}
