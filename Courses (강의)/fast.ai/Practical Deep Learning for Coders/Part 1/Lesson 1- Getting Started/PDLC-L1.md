# Lesson 1: Getting Started

#machine_learning #deep_learning #pytorch 

## Introduction

- 2022 version of the fast.ai course

## What has changed since 2015?

- In 2015, the idea of checking whether something is a photo of a bird was considered nearly impossible, to the point where it was the butt of a XKCD joke
- Today, we can build a system that can accomplish this task in under two minutes

## Is it a bird?

- Get a picture of a bird
	- Using Duck Duck Go to search for bird photos and grab the URL
- Build system that will recognize things that are birds and things that are not birds

## Images are made of numbers

- "Picking" a single pixel of an image on a website like `Pix Spy` gives you RGB information about that pixel
	- e.g. 251 red, 48 green, 21 blue (`\$r, \$g, \$b`)
	- Dimensions of the image are also included in its metadata

## Downloading Images

- Get a picture of something that isn't a bird (e.g. forest)
	- Forest, in this case *may* contain a picture of a bird, which is another functionality we're trying to test with our system
- Note
	- When downloading images, you will most likely run into a few broken links, which won't work for the machine learning model
	- Have code that will verify that the images do exist and that the links work

##  Creating a DataBlock & Learner

- 

## Training the Model & Making a Prediction

##  What can deep learning do now?

## Pathways Language Model (PaLM)

##  Top Down Learning

## Professor

## 2012 Deep Learning vs. Modern Deep Learning

## Visualizing Layers of a Trained Neural Network

## Image Classification Applied to Audio

## Image Classification Applied to Time Series & Fraud

## PyTorch vs. TensorFlow

## AdamW Optimizer

## Kaggle

## Bird or not bird?

## How to import libraries

## Best Practice- Viewing Your Data Between Steps

## DataBlock API Overview

## DataBlock API Parameters

## fast.ai Documentation

## fast.ai's Learner (Model & Data Combination)

##  fast.ai's Available Pretrained Models

## What is a pretrained model?

## Testing your model with the predict method

## Segmentation

##  Segmentation Code Explanation

## Tabular Analysis with fast.ai

## `show_batch` Method Explanation

## Collaborative Filtering (Recommendation Systems) Example

## RISE

## What else can you do with notebooks?

##  What can deep learning do presently?

## The First Neural Network

## High Level Machine Learning Models

## Homework