# Docker Images

All docker images in this repo have been configured to be able to display any pop-up windows from inside the container on the local host computer. The `run.sh` scripts are basically all the same. 

## Python 
1. Generic Python - Python 3.8 barebones installation (miniconda)
2. Pytorch - Python 3.8 with Pytorch
3. Tensorflow - Python 3.8 with Tensorflow (to be added)

## ROS 
1. ROS with RViz - Builds a catkin workspace upon entering. Can open RViz/rqt windows from within docker
