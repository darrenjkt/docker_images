#!/bin/bash

IMAGE_NAME="djkt/ros"
ROS_DISTRO="melodic"
TAG=$IMAGE_NAME:$ROS_DISTRO

docker build \
--no-cache \
--rm \
-t $TAG .

