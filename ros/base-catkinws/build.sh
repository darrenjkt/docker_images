#!/bin/bash

IMAGE_NAME="darrenjkt/ros"
ROS_DISTRO="melodic"
TAG=$IMAGE_NAME:$ROS_DISTRO

docker build \
--no-cache \
--rm \
-t $TAG .

