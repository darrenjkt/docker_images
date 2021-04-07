# Docker Images for Python and ROS

All docker images in this repo have been configured to be able to display any pop-up windows from inside the container on the local host computer. The `run.sh` scripts are basically all the same. 

## Python 
1. Generic Python - Python 3.8 barebones installation (miniconda)
2. Pytorch - Python 3.8 with Pytorch
3. Tensorflow - Python 3.8 with Tensorflow (to be added)

## ROS Melodic
1. Catkin_ws - Built on barebones ubuntu18.04 image, runs as root. Creates catkin_ws and builds/sources it upon running the container
2. Cuda_cudnn - Built on different nvidia/cuda images to run perception algorithms that use Pytorch/Tensorflow in a ros framework
