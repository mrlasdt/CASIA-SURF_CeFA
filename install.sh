#!/bin/bash

#Install at_learner_core

pip install -e at_learner_core

#Put pyflow to at_learner_core/utils, replace OpticalFlow.cpp to remove logs spamming to console and build Original github repository
cd at_learner_core/at_learner_core/utils
git clone https://github.com/pathak22/pyflow.git
cd pyflow/
cp ../../../../data/OpticalFlow.cpp src/OpticalFlow.cpp #Remove logs spamming to console
pip install cython
python setup.py build_ext -i
python demo.py # 
cd ../../../../



