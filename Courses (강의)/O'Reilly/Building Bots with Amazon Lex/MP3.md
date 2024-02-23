#cloud_computing #aws 

## Modules (Relevant only to [CS498W3Notes](../../Coursera/CS498-%20Cloud%20Computing%20Applications/W3/CS498W3Notes.md) and MP3)

- Note:
	- Additional supplement for AWS Lex.
- Table of Contents:
	- Part 1: Analyze, Design, Develop, Test and Deploy Bots
	- Part 2: Applying Chatbot Concepts
	- Part 3: Extending Chatbot Functionality

## Part 1: Analyze, Design, Develop, Test and Deploy Bots

### Introduction

- What is a Chatbot?
	- AI software that can indulge in a conversation with the user in natural language
- History of Chatbots
	- 1966
		- MIT builds Eliza, a program based on pattern matching & substitution methodology 
	- 1995
		- A.L.I.C.E. (Artificial Linguistic Internet Computer Entity), a program that used heuristic pattern matching
		- Considered as the first ever online chatbot
		- Different from Eliza in that A.L.I.C.E. used Artificial Intelligence Markup Language (AIML)
	- 2001
		- SmarterChild, a product that was powered by AI
		- Precursor to Siri
	- 2010
		- Siri, a voice activated digital assistant released by Apple
	- 2012
		- Google Now, released by Google and was later replaced by Google Assistant
	- 2015
		- Cortana, a voice activated digital assistant released by Microsoft
		- Alexa, a voice activated digital assistant released by Amazon

### What is a Chatbot?

- Chatbot Components
	- User Interaction
		- Voice Input
		- Text Input
	- Text Input
		- Processed by Natural Language Understanding (NLU) component
		- Once *intent* has been determined, a dialog management component receives the intent
			- Dialog Modeling
				- Keeps track of dialog state between user and bot
			- Dialog Control
				- Helps in making decisions about the next bot action
		- Once a decision has been made, it will passed to the Natural Language Generator, which creates content in either written/ spoken language so that the user receives a response that they understand
	- Voice Input
		- Chatbots require the ability to convert speech to text, which is achieved by the Automatic Speech Recognizer (ASR) component
			- Follows the same pattern as the text input afterwards
			- After the Natural Language Generator state, the generated output is fed into a Text-to-Speech Synthesizer that is narrated back to the user
- Amazon Lex
	- Fully managed AI service with advanced natural language models to design, build, test and deploy conversational interfaces
		- v1 was released by Amazon in 2017
		- **v2 was released by Amazon in 2021**
	- Supports 10+ languages

### Use Case Details

- Example
	- Fictitious insurance company: "Company A"
	- Company A is profitable but employee satisfaction is low
		- Main reason identified is "scattered HR policies"
		- Company A decides to build a chatbot for their employees to access HR policies in an efficient manner
	- Chatbot team will take a phased approach to building the chatbot in question
		- Bot will be trained to answer queries related to leaves & vacations
	- Employees should be able to:
		- Authenticate themselves
		- Check for their leave balance
		- Apply for leaves

### Conversation Flow

- Decision tree that describes the possible list of outcomes based on events or decisions at any point in the conversation
- Visual representation of the user journey
	- Depicts different paths through which the interaction between the user and the bot can traverse
	- Build in collaboration with the business users (customers)
- ![](assets/Flowchart.png)

### Conversation Flow Demo

- Demo at [Botsociety](app.botsociety.io)

### Terminology of a Chatbot

- Vocabulary
	- Intent
		- Particular goal that the user wants to achieve
	- Utterances
		- Phrases that invoke the intent
	- Prompts
		- Questions that will ask user to input data
	- Slots
		- Data the user provides to fulfill intent
	- Confirmation Prompts
		- To clarify whether the user wants to fulfill the intent
	- Fulfillment
		- Business logic required to fulfill the user intent

### Summary

- X

## Part 2: Applying Chatbot Concepts

### Introduction

- Part 2
	- Creating our first bot
	- Creating intents, utterances and slots

### Creating an Amazon Lex Bot

- In the AWS console, go to "Amazon Lex"
- Ensure that the Lex console you access is using Lex v2
- Click "Create Bot"
	- Create a blank bot
	- Name the bot
	- Configure IAM permissions & COPPA settings
		- IAM permissions can be created with basic AWS Lex permissions (enables things like CloudWatch)
		- Mark the COPPA setting as "No" since we need to log the conversations of the bot
	- Add language to bot
		- English (US)
		- Decide whether bot needs voice interaction or not
			- Choose "None"
	- Click "Done", which creates the bot

### Creating Intents

- **Intents will be "created" by linking the Lambda function created in Section 3.1 with the Lex bot created in Section 3.2**

### Creating Utterances

- **Slot type will be set to `AMAZON.city` in MP3**
- **Example Utterance from MP3**
	- User: "What is the distance from Chicago to Springfield?"
		- Reply from Chatbot: "2"
	- User: "I need to find the distance between two cities?"
		- Reply from Chatbot: "Source?"
			- User: "Chicago"
				- Reply from Chatbot: "Destination?"
					- User: "Urbana"
						- Reply from Chatbot: "1"
- Configure a `FallbackIntent`
	- Create intents for each utterance

### Creating Prompts, Slot & SlotTypes

- X

### Creating Dynamic Prompts & Utterances 

- Modification of "Closing Responses" to create dynamic responses to dynamic prompts

### Creating Custom SlotTypes

- X

### Creating Context

- X

### Creating a Follow Up Intent

- X

### Miscellaneous Settings

- **Will most likely not require some of these features for MP3**
- Potentially useful features:
	- Conversation Logs
		- Can be configured as text logs
		- Text logs can be imported into CloudWatch
			- Will require a log group created beforehand
	- Inspect Window
		- Shows which intent you're working on and what its slot values are
		- Shows a trace of I/O that is being internally used by Lex
- Other features:
	- Retry Count
	- Sentiment Analysis

### Summary

- X

## Part 3: Extending Chatbot Functionality

### Introduction

- Part 3
	- Create AWS Lambda functions & Lex integration
	- Deployment of Lex chatbots
	- Signoff

### Introduction to AWS Lambda

- Serverless offering from AWS
- Introduced in 2015
- Natively supports code written in Java, Go, Node.js, Python etc

### Overview on JSON Format of Lex

- Format
	- ![](assets/InputJSON.png)
	- ![](assets/OutputJSON.png)
- `invocationSource`
	- Indicates the status of the Lex code currently
		- `DialogCodeHook`: when we are capturing slots
		- `FulfillmentCodeHook`: when all slots have been captured
- `inputMode`
	- Indicates mode in which the user is interacting with the bot
		- `Speech`: User is interacting by talking
		- `Text`: User is interacting by typing

### Validating & Initializing Slots

- X

### Fulfillment in Lex

- Fulfillment function is equivalent to the closing responses section on Lex
- **The Lambda code hook must be enabled for fulfillment in MP3, not initialization and validation**

### Publishing the Bot

- Version & Alias
	- **Bot for MP3 must be given an alias, by default Amazon Lex v2 creates an alias called `TestBotAlias`**
	- When you create an alias, make sure to associate with the version you have created beforehand
	- Go to "Languages" and apply the Lambda function to invoke for **fulfillment**

### Testing for Voice and Text Inputs

- Click on the version of the bot you want to test
	- Go to "Languages"
	- Click "Test"
	- Select which alias you want to test

### Channels for Consuming the Bot

- CloudFormation
	- `us-east-1` for MP3
	- Configure the bot to **Lex v2** not Lex v1

### Further Steps

- X

### Summary

- X