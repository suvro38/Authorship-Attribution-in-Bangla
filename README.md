# Authorship-Attribution-in-Bangla-Using-Stylometric-and-N-gram-Features
Mini Project for Natural Language Understanding

## Abstract
This project aimed to perform authorship attribution for Bengali texts using a combination of traditional linguistic features, including n-gram (both character and word) and type-token ratio (TTR). The goal was to analyze an author’s writing style and predict the original author given an excerpt of text.

## Dataset and Tools

1. [BAAD16: Bangla Authorship Attribution Dataset](https://data.mendeley.com/datasets/6d9jrkgtvv/4), which comprised 13.4+ million words and included 17,996 sample Bengali texts from 16 different authors. The original dataset was initially divided into 14,000+ texts for training and 3,500+ texts for testing. To facilitate experimentation and code development, the dataset underwent manipulation to create smaller subsets; macroTrain Dataset: This subset comprised 800 texts specifically allocated for training purposes; macroTest Dataset: A subset of 208 texts was reserved for testing the models; miniData Dataset: An even smaller subset, containing 9 texts, was utilized during the code development phase.

2. [SUST-Bangla Natural Language Toolkit (sbnltk)](https://github.com/Foysal87/sbnltk), a Python module specifically designed for Bengali natural language processing tasks. 

## Feature Extraction and Model Training
Various traditional methods were employed for feature extraction:
1. Type-Token Ratio (TTR) - Average TTR for each author was calculated using their respective texts during the training phase.
2. Character Bi-Gram - Character bigram models were created using Maximum Likelihood Estimation (MLE) and Add-One smoothing.
3. Word Bi-Gram - Word bigram models were constructed with Add-One smoothing, considering all texts of each author combined.

## Evaluation
The performance of each model was evaluated using accuracy scores calculated by comparing the predicted authors against the actual authors for a set of test excerpts. The accuracy of each model was assessed to determine its effectiveness in authorship attribution.

## Implementation Pipeline
1. Calculate Type-Token Ratio (TTR): A function is created to calculate the Type-Token Ratio (TTR) for a given text, which measures the diversity of words used by an author.
   
3. Calculate Character Bigrams: Another function is developed to compute the probability of character bigrams in a text, capturing sequential pairs of characters.

4. Calculate Word Bigrams: A function is implemented to determine the probability of word bigrams in a text, representing consecutive pairs of words.

5. Model Training: Iterate over each author in the training data. For each author, create separate models using TTR, character bigrams, and word bigrams.

6. Model Testing: For each text in the test data, create TTR, character bigram, and word bigram models. Compare the test data models with the trained models for each author. Predict the author of each test text based on the minimum difference between the test data models and the trained models.
   
8. Compute Accuracy: Calculate the accuracy of each model by comparing the predicted authors with the actual authors in the test dataset.
