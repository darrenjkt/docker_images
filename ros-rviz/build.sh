#!/bin/bash

docker build \
--no-cache \
--rm \
-t ros-rviz:latest-melodic . .

