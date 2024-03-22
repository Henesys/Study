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

- DataBlocks gives fast.ai (the library) all the information it needs to create a computer vision model
	- One of the benefits of working with computer vision data is that you can visually check your data and see if the data has been properly labeled
	- Example takes the downloaded pictures of birds and forests & processes it into a convolutional neural network and fine tunes the parameters

## Training the Model & Making a Prediction

- Testing the model with the first picture of the bird indeed confirms that the picture of the bird is indeed a bird
- Something that was previously seen as unfeasible in 2015 can be done pretty easily today with just an ordinary laptop

##  What can deep learning do now?

- `Dall- E 2`, `Midjourney`
	- Deep learning to generate pictures using keywords

## Pathways Language Model (PaLM)

- PaLM
	- Can take any arbitrary English as text or a question and can create an answer which not only answers the question but also *explains* its thinking
- Practical & Ethical Considerations
	- [Course](ethics.fast.ai)

##  Top Down Learning

- [Cups by Radek Osmulski](cups.fast.ai/fast)
	- Radek Osmulski is the author of `Meta Learning: How to Learn Deep Learning And Thrive In The Digital World`
- Top Down Learning
	- Start learning anything with a context in place
- The Book
	- [Deep Learning for Coders with fastai and PyTorch](../../../../../Books%20(책)/In%20Progress/Deep%20Learning%20for%20Coders%20with%20fastai%20&%20PyTorch/Deep%20Learning%20for%20Coders%20with%20fastai%20and%20PyTorch.md)
	- Recommended to read a chapter of the book after each lesson
- The Professor
	- Pretty much a god

## 2012 Deep Learning vs. Modern Deep Learning

- "Why couldn't we make a bird recognizer in 2015 and why can we do it now?"
	- Image Recognition in 2012
		- 5 year survival of breast cancer patients
		- Classic machine learning approach, deep learning wasn't on the radar at this point in time
		- After creating thousands of features with a team of cross- disciplinary backgrounds, they fed the data into a L1- regularized logistic regression model to predict survival

## Visualizing Layers of a Trained Neural Network

- Neural Networks in 2015
	- Researchers took apart a neural network to see what features it had learned by itself
	- The **key** difference between machine learning then and machine learning now is the fact that we don't have to manually code the features that we look for, it can be *learned*

## Image Classification Applied to Audio

- Image based algorithms aren't only used for images
	- Foundational techniques will be demonstrated in this course, but creativity in using these techniques will also be demonstrated, showing off the flexibility of these algorithms
	- Example
		- An image recognizer can also be used to *classify* sounds
- Myth vs. Truth
	- Math
		- High school math is sufficient
	- Data
		- Can achieve SOTA results with < 50 items of data
	- Computers
		-  Can achieve SOTA results for free

## PyTorch vs. TensorFlow

- TensorFlow is pretty much dead, PyTorch is the industry (research) standard

## AdamW Optimizer

- PyTorch *does* use a lot of code for implementing relatively simple things
	- Thankfully, you can cut a lot of the fat using the fast.ai library

## Kaggle

- Can run Jupyter Notebooks on Kaggle

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