# 1. Introduction

This solution was designed to be easily ran by anyone with access to a Linux
computer and a Docker installation. The task consists in writing a python
program that takes a few inputs and then outputs an image of a
black circle on a white background as a png.

# 2. Setup

## requirements
    - docker version: 17.12.0+
    - terminal access
    - linux OS
    - internet access
To make sure your linux distribution is compatible, run `xdpyinfo` in your terminal.
If the command is recognized, than this machine will suffice.

# 3. Running the program
The execution of this program will run inside a docker container which means, that
there is no need to install additional libraries, nor will any libraries will be installed
on your machine. Nevertheless, it is required that the docker client/desktop is running.

To run the program to draw the circle run the following command:

`sh run-crx-python.sh <radius> <thickness> <center_coord_x> <center_coord_y> <height> <width>`

where:
  - < radius > : Radius of the circle in pixel
  - < thickness >: Thickness of the circle in pixel
  - < center_coord_x >: x coordinate of the center of the circle in pixel
  - < center_coord_y >: y coordinate of the center of the circle in pixel
  - < height >: height of the image in pixel
  - < width >: width of the circle in pixel

A `circle.png` should be accessible on the same directory the command was ran.

# 4. Removing the container
To stop and remove the container and to delete the `circle.png` output simply run:

`sh clean.sh`

Notice that before running the `run-crx-python.sh` script cleaning the environment
might be necessary.