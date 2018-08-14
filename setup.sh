#! /bin/bash

mkdir data
cd data
wget http://www.vlfeat.org/matconvnet/models/beta16/imagenet-vgg-verydeep-19.mat
mkdir bin
wget http://msvocds.blob.core.windows.net/coco2014/train2014.zip
unzip train2014.zip

python style.py --style style/medusas-mas-venenosas.jpg \
  --checkpoint-dir . \
  --content-weight 1.5e1 \
  --checkpoint-iterations 1000 \
  --batch-size 20