# Copyright (c) 2019, NVIDIA Corporation. All rights reserved.
#
# This work is made available under the Nvidia Source Code License-NC.
# To view a copy of this license, visit
# https://nvlabs.github.io/stylegan2/license.html

FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel

RUN pip install scipy==1.3.3 requests==2.22.0 Pillow==6.2.1 tqdm moviepy typer tensorflow-gpu==1.15.3

RUN apt-get update --fix-missing && apt-get install -y git wget cmake

RUN pip install dlib

#COPY . /stylegan2
WORKDIR /

RUN git clone https://github.com/mit-han-lab/data-efficient-gans.git
RUN git clone https://github.com/NVlabs/stylegan2.git
RUN git clone https://github.com/rosinality/stylegan2-pytorch.git

WORKDIR /stylegan2-pytorch
