#!/usr/bin/env sh

LOG=log/test-`date +%Y-%m-%d-%H-%M-%S`-deeplab_lstm5.log
CAFFE=./build/tools/caffe

$CAFFE test --model=prototxt/deeplab_lstm5/test.prototxt --weights=snapshots/deeplab_lstm5_iter_$1.caffemodel --iterations=200 --gpu=0  2>&1 | tee $LOG
