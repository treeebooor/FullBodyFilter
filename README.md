# FullBodyFilter
A Learning-Based Data Collection Tool For Human Segmentation

## Contents
1. [Documentation](doc/)
2. [Source Code and Scripts](src/)
3. [Overview of Project](#overview)
4. [Usage](#usage)


## Overview
Human segmentation is a difficult machine learning task of identifying and extracting the human in a picture. Most of the time this is done by using a convolutional neural network. In order to achieve an accurate and robust model, large amounts of data with varying human poses need to be collected to train the model. Collecting and labeling train data by hand takes lots of time and resources. This project explores another option to use automtation to collect and label pre-existing data from internet videos. 

The model that was focused on is the DTEN ME model used for Zoom meetings virtual background. 

Openpose is used to filter the video for suitable frames, in particular single person full body frames. Mask R-CNN is used to generate human masks to use a train labels. To find which images perform poorly on ME model, a comparison is done between ME masks and Mask R-CNN masks. The result is a set of images and masks that can be used as training data.

<p align ="center">
  <img src="/img/overview.png" width="1000" />
  <em>Overview of Program</em>
</p>



A full report of the system design and implemenation details can be found [here](docs/)

## Sample Results

<p float="left" align ="center">
  <img src="/img/result_1.png" width="475" />
  <img src="/img/result_2.png" width="475" /> 
  <img src="/img/result_3.png" width="475" />
  <img src="/img/result_4.png" width="475" />
  <em>Examples of train data saved. In each image bottom left is Mask R-CNN mask and bottom right is ME mask.</em>
</p>

## Usage
This project relies on Openpose and Mask R-CNN and all their dependencies. Instructions on how to set up each are found in there respective directories [here](dependecies/).

Documentation on how to use scripts are located in [doc](doc/).
