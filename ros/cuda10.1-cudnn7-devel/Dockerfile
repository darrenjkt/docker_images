# Base ROS cuda-cudnn installation 

FROM nvidia/cuda:10.1-cudnn7-devel
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         git \
         curl \
         wget \
         nano \ 
         ca-certificates \
         libjpeg-dev \
         libpng-dev \
         libssl-dev \
         libtiff5 \
         lsb-core \
         sudo && \
     rm -rf /var/lib/apt/lists/*

### ----- Install ROS  -----
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | apt-key add -
RUN apt-get update && apt-get install -y --no-install-recommends \
        ros-melodic-desktop \
        python-rosdep
RUN rosdep init
RUN rosdep update
# RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc

# Intalling ROS basic tools
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
RUN wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        python-catkin-tools \
        python-pip \
        python-tk \
        python-rosinstall \
        python-rosinstall-generator \
        python-wstool \
        software-properties-common && \
     rm -rf /var/lib/apt/lists/*

# Clean image
RUN sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/* 

# Setup entrypoint
COPY ./ros_entrypoint.sh /
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
