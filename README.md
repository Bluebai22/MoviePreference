# Movie Preference
#Project overview
This is a Machine Learning project I worked on with team of 4 in Brandeis Univeristy, trying to analyze the possible factors which might impact on movie preference using different models.
# Data source
We used a dataset from IMDb and box office form the years 2000 to 2019. 
# Data Preparation
Upon viewing the data, we discovered that many categories had missing or invalid data. First, We delete irrelevant rows and only keep the features we think is relevant with our target variables(movie’s box office profit), like genre, runtime minutes, average rating and etc.. Second, we delete the missing vuale because it only take less than 10% line of whole dataset. Third, to benefit the modeling process, we changes certain row into Categrical variables and removed some outliars

# Understand the data
We use R langage to take a overview of the cleaned dataset and use box plot and scatterplot matrix to better understand the dataset. In the box plot we can see the distribution of each variable and the outliars, which can be furthur removed to get a cleaner dataset for a more accurate results.
![plot](https://github.com/Bluebai22/MoviePreference/blob/main/Github/ScatterPlotMatrixs.png)

# Data Partition
We partitioned the data with a 60% training set and a 40% testing set.

# Unsupervised Analysis - Custer Analysis
To better undersatnd the data and benefit future analysis, we used K-means model here to conduct the custer analysis. With the help of Elbow plot, we choose k=8.
![plot](https://github.com/Bluebai22/MoviePreference/blob/main/Github/ElbowPlot.png)

Also, we used centroid plot to help us understand the characterization of each cluster.
![plot](https://github.com/Bluebai22/MoviePreference/blob/main/Github/CentriodPlot.png)

# Regression Analysis - Multiple Regression with Clusters
We conducted a multiple regression analysis to understand the important features in terms of customer's movie preference. We selected Worldwide Gross (worldwidegross) as target variable. We think this is a good target variable because it can provide guidance for the movie industry to better understand what type of movies are earning the most. The explanatory variables are bo_year_rank, runtimeMinutes, averageRating, and numVotes.

To receive the best result, we adjust model for serveral time with different methods, such as remove the insignificant variables, remove outliars, add interaction term and higher polynomial variables to indentify the non-linear relationship. 

Finally, We got the best model by adding clusters as new features to multiple regression model. As we expected, we received best result with highest R-squared , 0.876 and lowest RMSE, 29,406,899. From the P value and coefficient, we can see the importance of variables, which is RuntimeMinutes, averageRating, numofVotes, Hcluster 3,4,5,6,7, and 8, Km.cluster 6 and 7, numVotes_sq, bo_and_num
. 
![plot](https://github.com/Bluebai22/MoviePreference/blob/main/Github/Bestmodel-MultipleRegressionWithCluster.png)

# Classification Analysis - Classification Tree
We tried to used Classification Tree to help us find the potential factors impacting on customer preference. Here, Our target categorical variable is popularmovie which is determined by the average rating of the movie. So, if the movie rating is above 6.37(mean) then the popularmovie variable will be equal to 1. Otherwise, it will be 0. 

After trying different models, like Classification Tree and Random Forest, we received the best model Boosted Tree with coeflearn Zhu, mfinal 100, and maxdepth 3 by grid search. Meanwhile, the F1 score is 0.7258, the accuracy is 0.7186, the sensitivity is 0.6786 and the specificity is 0.7534.
![plot](https://github.com/Bluebai22/MoviePreference/blob/main/Github/ConfusionMatrix-BoostedTree.png)

At the end, we also added clusters which we recieved from cluster analysis into features in Classfication Tree model. We found that it can also help to improve the prefermence of the model.

#code
