# Authorship-Attribution-in-Bangla

##Abstract
This project aimed to perform authorship attribution for Bengali texts using a combination of traditional linguistic features, including n-gram (both character and word) and type-token ratio (TTR). The goal was to analyze an author’s writing style and predict the original author given an excerpt of text.

##Dataset and Tools
  Dataset: BAAD16: Bangla Authorship Attribution Dataset, which comprised 13.4+ million words and included 17,996 sample Bengali texts from 16 different authors. The dataset was extensively used for authorship attribution tasks and provided a diverse range of texts for training and testing.
  Tools: SUST-Bangla Natural Language Toolkit (sbnltk), a Python module specifically designed for Bengali natural language processing tasks. The toolkit offered functionalities such as tokenization, part-of-speech tagging, stemming, and more, which were essential for preprocessing and analyzing Bengali text data.
Feature Extraction
Various traditional methods were employed for feature extraction:

N-Gram Analysis: Both character and word n-grams were utilized to capture the linguistic patterns and stylistic characteristics of each author.
Type-Token Ratio (TTR): TTR was calculated to measure lexical diversity and complexity within each text, providing additional insights into the author’s writing style.
Model Training and Testing
The project followed a systematic approach for model training and testing:

TTR Model: Average TTR for each author was calculated using their respective texts during the training phase. This average TTR was then used as a feature for authorship prediction during testing.
Character Bigram Model: Character bigram models were created using Maximum Likelihood Estimation (MLE) and Add-One smoothing. These models captured the probabilities of character sequences and were instrumental in identifying authorship patterns.
Word Bigram Model: Word bigram models were constructed with Add-One smoothing, considering all texts of each author combined. These models captured the sequential relationships between words and aided in authorship attribution.
Evaluation
The performance of each model was evaluated using a comprehensive evaluation framework:

Accuracy Scores: Accuracy scores were calculated by comparing the predicted authors against the actual authors for a set of test excerpts. The accuracy of each model was assessed to determine its effectiveness in authorship attribution.
References
The project drew upon existing research and resources in the field of authorship attribution:

Dipongkor, A. K., et al. (2021). DAAB: Deep Authorship Attribution in Bengali.
Hossain, M. R., et al. (2021). Authorship Classification in a Resource Constraint Language Using Convolutional Neural Networks.
Khatun, A., et al. (2020). BAAD16: Bangla Authorship Attribution Dataset (Version 4).
Phani, S., et al. (2015). Authorship Attribution in Bengali Language.
Selj, V., et al. (2003). N-Gram-Based Author Profiles For Authorship Attribution.
SUST-Bangla Natural Language Toolkit (sbnltk) from GitHub - Foysal87/sbnltk: Bangla NLP toolkit.
