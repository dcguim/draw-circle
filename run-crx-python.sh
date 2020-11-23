#!/bin/bash

build () {
    resolution=$(xdpyinfo | awk '/resolution/{print $2}')
    docker build \
        --build-arg res_arg=$resolution \
        --build-arg rad_arg=$1 \
        --build-arg thick_arg=$2 \
        --build-arg centx_arg=$3 \
        --build-arg centy_arg=$4 \
        --build-arg height_arg=$5 \
        --build-arg width_arg=$6 \
        -t python .
}
run() {
    docker run -it  --name crx_interview_python python
}

build "$1" "$2" "$3" "$4" "$5" "$6"
run
