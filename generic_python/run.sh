#!/bin/bash

VOLUMES="--volume=/tmp/.X11-unix:/tmp/.X11-unix
		 --volume=/etc/passwd:/etc/passwd 
		 --volume=${PWD}/..:/Workspace/projects"

xhost +local:docker

docker run \
-it --rm \
$VOLUMES \
--env=NVIDIA_VISIBLE_DEVICES=all \
--env=NVIDIA_DRIVER_CAPABILITIES=all \
--env=DISPLAY \
--env=QT_X11_NO_MITSHM=1 \
--privileged \
--net=host \
--runtime=nvidia \
--workdir="/Workspace/projects" \
-e NVIDIA_VISIBLE_DEVICES=0 \
python
