#!/bin/bash

conda create --name testEnvFromBash python=3.8 -y;
conda activate testEnvFromBash;
conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y;

pip install -U openmim;
mim install mmengine;
mim install "mmcv>=2.0.1";
mim install "mmdet>=3.1.0";

pip install -r requirements.txt;
pip install -v -e .

# conda install pytorch==2.3.0 torchvision==0.18.0 torchaudio==2.3.0 pytorch-cuda=11.8 -c pytorch -c nvidia

# python 3.10
# torch 2.3.1

# I installed a lower version of pytorch (1.12.0) and installed mmcv with pip install mmcv==2.0.1
# and it somehow worked!!
