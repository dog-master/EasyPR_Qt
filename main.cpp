#include <QCoreApplication>

#include <iostream>
#include "easypr.h"


using namespace easypr;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    CPlateRecognize pr;
    pr.setResultShow(true);
    pr.setDetectType(PR_DETECT_CMSER);
    pr.setMaxPlates(1);

    vector<CPlate> plateVec;
    Mat src = imread("C:/Users/ygh/Desktop/car.jpg");
    int result = pr.plateRecognize(src, plateVec);
//    std::cout<<result<<std::endl;
    return a.exec();
}
