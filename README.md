# Movie Preference
#Project overview
This is a Machine Learning project I worked on with team of 4 in Brandeis Univeristy, trying to analyze the possible factors which might impact on movie preference using different models.
# Data source
We used a dataset from IMDb and box office form the years 2000 to 2019. 
# Step 1: Data Preparation
Upon viewing the data, we discovered that many categories had missing or invalid data. First, We delete irrelevant rows and only keep the features we think is relevant with our target variables(movie’s box office profit and ranking), like genre, runtime minutes, average rating and etc.. Second, we delete the missing vuale because it only take less than 10% line of whole dataset. Third, to benefit the modeling process, we changes certain row into Categrical variables.
[image]
# Step 2: Understand the data
We use R langage to take a overview of the cleaned dataset and use box plot and scatterplot matrix to better understand the dataset. In the box plot we can see the distribution of each variable and the outliars, which can be furthur removed to get a cleaner dataset for a more accurate results.
# Custer analysis

