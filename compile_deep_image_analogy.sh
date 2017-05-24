#!/bin/sh

p=windows/deep_image_analogy/source

nvcc $p/*.cpp $p/*.cu -o deep_image_analogy \
     -std=c++11 -O2 \
     -w -Wno-deprecated-gpu-targets \
     -I./include  \
     -L./build/lib  \
     -lopencv_core \
     -lopencv_highgui \
     -lopencv_imgproc \
     -lboost_system  \
     -lcublas \
     -lcaffe \
     -lglog

