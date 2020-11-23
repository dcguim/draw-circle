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
    echo "running the interview solution ..."
    docker run  -t --name crx_interview_python python
#   docker ps
#   echo "waiting 5 seconds to render the circle in the container ..."
    sleep 3[s]
#   echo "fetching the png ..."
    docker cp crx_interview_python:/usr/src/app/circle.png .
    open circle.png
}

build "$1" "$2" "$3" "$4" "$5" "$6"
run

