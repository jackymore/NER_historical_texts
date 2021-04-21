# Application of NER tools to 17th century travelogues

This project was conducted as part of the master's thesis "Theory and Application of Named Entity Recognition in the Digital Humanities with a Focus on 17th Century Historical Texts". The goal was to find out to what extent NER tools can be applied to German historical texts and what results they provide. In addition, a closer look was taken at the application of NER with spaCy. A small NER model was trained and applied to a travelogue from 1650 by Johann Georg Metzger. 

The experiments in this project were done with spaCy v2.3 (https://v2.spacy.io/usage/spacy-101), NLTK (https://www.nltk.org/) and the acdh-spacytei modul (https://pypi.org/project/acdh-spacytei/)

## Data 

A travel report from 1649 was used for the test data: "Die Internuntiatur des Johann Rudolf Schmid zum Schwarzenhorn (1649): Reisebericht, Instruktionen, Korrespondenz, Bericht" (http://gams.uni-graz.at/o:dipko.rb)

For the training corpus, the travelogue "Offt begehrte Beschreibung Der Newen Orientalischen Rejse" from 1647 by Adam Olearius was taken from the DTA text corpus (version of 27 July 2020: DTA core corpus and supplementary texts in format TEI P5 incl. att.linguistic (5305 texts, 2.5G), https://www.deutschestextarchiv.de/)

## Workflow 

### 1) Test the German standard models
The German standard models of NLTK and spaCy were applied in the notebooks ner_with_nltk.ipynb and ner_with_spacy.ipynb. 

### 2) Train a custom model with spaCy

To train a custom model, the notebooks in the "training_custom_model_with_spacy" folder can be run in order.

#### Preprocessing
To prepare the data for training, it is necessary to first convert the gold standard training data from XML/TEI to JSON spaCy training data format. This step is performed in the "step1_preprocessing_data_for_NER.ipynb" notebook. 

#### Data Cleaning, Training and Evaluation

Data cleaning, training and evaluation are performed in the notebook "step2_train_and_evaluate.ipynb". 

#### Testing

In the last step, the trained model is applied to the test data and tested, see "step3_testing_custom_model.ipynb


## Cite
More, Jacqueline. Theorie und Anwendung von Named Entity Recognition in den Digital Humanities mit Fokus auf historische Texte des 17. Jahrhunderts (2021). Print.










