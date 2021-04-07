#!/bin/bash

IMAGE_NAME="darrenjkt/ros"
ROS_DISTRO="melodic"
CUDA_VER="cuda10.1"
CUDNN_VER="cudnn7"
TAG=$IMAGE_NAME:$ROS_DISTRO-$CUDA_VER-$CUDNN_VER


docker build \
--no-cache \
--rm \
-t $TAG .

