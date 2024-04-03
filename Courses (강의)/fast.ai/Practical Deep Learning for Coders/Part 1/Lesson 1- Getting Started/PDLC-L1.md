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
	- [Jupyter 101](https://www.kaggle.com/code/jhoward/jupyter-notebook-101)

## Bird or not bird?

- [Is it a bird?](https://www.kaggle.com/code/jhoward/is-it-a-bird-creating-a-model-from-your-own-data)
	- Quick rundown of the "Bird or Not Bird" demo on Kaggle

## How to import libraries 

- `import` and `pip` are your friend
	- In this course, a lot of libraries will be integrated with the `fastai` library

## Best Practice- Viewing Your Data Between Steps

- Take advantage of the cells in Jupyter Notebook so that you can break down the entire workflow into digestible chunks
- For computer vision, large images aren't really that necessary, you can do just fine with small images
	- A lot of time will be spent opening the images themselves and the actual data processing tasks will take less time than opening the images

## DataBlock API Overview

- `DataBlock` is **key** for deep learning
	- "How do I get this data into my model?"

## DataBlock API Parameters

- DataBlock Parameters
	- `blocks`
		- "What kind of data is our input? Output?"
		- e.g. `ImageBlock, CategoryBlock`
	- `get_items`
		- "What are the items in this model? What is the model training from?"
		- e.g. `get_image_files()`
	- `splitter`
		- Determining the specs of the validation set
		- e.g. `RandomSplitter(valid_pct = .2, seed = 42)`
	- `get_y`
		- "How do we know the correct label of a photo?"
		- e.g. `parent_label`
			- We saved images in a "forest" or a "bird" folder, `parent_label` returns the file path
	- `item_tfms`
		- Most computer vision architectures need all of your inputs (images) that will be used to train the model to be of a uniform size
		- e.g. `[Resize(192, method = "squish")]`
- Data Loaders (`dataloaders`)
	- Structure that PyTorch iterates through to grab data efficiently with a GPU
	- Data loaders will feed the training algorithm with a large number of images (**batch**)

## fast.ai Documentation

- [Documentation](https://docs.fast.ai/)

## fast.ai's Learner (Model & Data Combination)

- Learner
	- Combines a model (the actual neural network function being trained) with the data being used to train the model with
	- `learn = vision_learner(dls, resnet19, metrics = error_rate)`
		- `dls`
			- Data loader (which has the data)
		- `resnet18`
			- The actual neural network function
			- [Other PyTorch Image Models: timm](https://timm.fast.ai/)
				- fast.ai is the first framework to integrate `timm`, which is a deep learning library that has a collection of SOTA computer vision models
		
##  fast.ai's Available Pretrained Models

- By default on fast.ai, the models that you download will have ideal weights so that you don't have a bare neural network with no pre- assigned weight

## What is a pretrained model?

- `learn.fine_tune()`
	- Takes the pre- trained weights provided by fast.ai and *fine tunes* them to teach the model differences between your dataset and what it was originally trained for

## Testing your model with the predict method

- `learn.predict()`
	- Allows you to pass in an image and deploy your model

## Segmentation

- Segmentation
	- Take an image and color in every pixel based on the subject (e.g. streetlamp, road, car)

##  Segmentation Code Explanation

- `SegmentationDataLoaders`
	- DataBlocks are flexible and can be used for a wide variety of applications, but you can choose to use special data loaders classes for specific kinds of data
	- For segmentation tasks, you can choose to use `SegmentationDataLoaders`

## Tabular Analysis with fast.ai

- Tabular Analysis
	- Taking data that is in an columnar format (e.g. spreadsheets, databases) and trying to predict a column with them
- `TabularDataLoaders`
	- Data loader that is particularly specialized towards tabular data
	- Need to specify which of the columns are categorical with `cat_names`
	- Need to specify which of the columns are continuous with `cont_names`
- `tabular_learner`
	- Learner that is particularly specialized towards tabular data
	- Note that for tabular models, we will use `fit_one_cycle()` instead of `fine_tune()` because generally speaking, there won't be any pre- trained models since every table of data will be very different

## `show_batch()` Method Explanation

- `show_batch()` uses a form of "type dispatch" that is common in Julia to automatically format your data into something "useful" when you choose to display it

## Collaborative Filtering (Recommendation Systems) Example

- Basis of most recommendation systems today
	- "Which users liked/ used/ purchased which products?"
		- Guess what other products these users will like based on the patterns exhibited by similar users
- `CollabDataLoaders` + `show_batch()`
	- User ID
	- Product ID
	- Rating for Product by User
- `collab_learner`
	- Instead of predicting a category, you'll be predicting a number so you'll need to provide a range
		- e.g. `y_range = (.5, 5.5)`
- Note
	- Mean Squared Error (MSE) is listed as `valid_loss` ("How far are we from the validation set?")

## RISE

- [Slideshow in Jupyter](https://rise.readthedocs.io/en/latest/)
	- Note that RISE only works with vanilla Jupyter, not JupyterLab
	- `pip install RISE`

## What else can you do with notebooks?

- The book that the course sometimes references is written entirely with Jupyter Notebook
	- [fastbook](https://github.com/Henesys/fastbook)
- The entire fast.ai library is written with Jupyter Notebook
- Blogs
- Parallel Testing

##  What can deep learning do presently?

- Examples
	- Natural Language Processing (NLP)
		- Answering questions
		- Speech recognition
		- Summarizing documents
		- Classifying documents
	- Computer Vision
		- Satellite & drone imagery interpretation
	- Medicine
		- Finding anomalies in radiology images
		- Measuring features in ultrasounds
	- Biology
		- Folding proteins
		- Classifying proteins
	- Image Generation
		- Colorizing Images
- `tl;dr`- We're just scratching the surface of what we can do with deep learning and its application to different domains cannot be underestimated

## The First Neural Network

- Mark I Perceptron @ Cornell Aeronautical Laboratory (1957)

## High Level Machine Learning Models

- General Idea
	- Neural networks are models that are mathematical functions that takes inputs, multiplied by sets of weights, summed together, zeroes out negative numbers for inputs to the next layer
	- The model is useless without carefully selected weights
		- Initially, the weights are random so the initial results are not very good
		- The *loss* is a representation of how good or bad the results are and *update* the weights for the following iteration
	- Eventually when the model becomes good enough, the loss isn't needed and the weights get integrated into the model itself, resulting in a structure which requires an input, which will get processed into a model, outputting results (a *program*)

## Homework

- Try out the Jupyter Notebooks/ Kaggle
- Check out the forums
- Read the 1st chapter of the book