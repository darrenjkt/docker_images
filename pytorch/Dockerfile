FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04
ARG PYTHON_VERSION=3.8
ARG WITH_TORCHVISION=1
RUN apt-get update && apt-get install -y --no-install-recommends \
         build-essential \
         cmake \
         git \
         curl \
         nano \ 
         ca-certificates \
         libjpeg-dev \
         libpng-dev && \
     rm -rf /var/lib/apt/lists/*

# Install python and pytorch
RUN curl -o ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && chmod +x ~/miniconda.sh \
    && ~/miniconda.sh -b -p /opt/conda \
    && rm ~/miniconda.sh \
    && /opt/conda/bin/conda install -y python=$PYTHON_VERSION  \
    && /opt/conda/bin/conda install -y -c pytorch magma-cuda100 \
    && /opt/conda/bin/conda clean -ya
ENV PATH /opt/conda/bin:$PATH

RUN conda install -c pytorch\
    pytorch==1.6.0 \
    torchvision==0.7.0 \
    cudatoolkit=10.2 \
    && conda clean -ya

# Add additional python requirements in a requirement.txt file in the same folder as Dockerfile
# COPY ./requirements.txt /tmp/requirements.txt
# RUN pip install -r /tmp/requirements.txt

WORKDIR /workspace
