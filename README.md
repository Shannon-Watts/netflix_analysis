# :tv: Netflix analysis 📺 

This project was completed by Chisimnulia Okoye, Sofia Kauser, and Shannon Watts.

## Research proposal

Our project focuses on two datasets sourced from Kaggle. We chose these datasets as we love to watch Netflix ... but we had run out of tv shows and films to watch. We wanted to see how many of IMDBs top 1000 films and tv series were on Netflix. Surely the most rated and top grossing films are the most interesting? So we also wanted to know which films/tv shows and how many were not on Netflix. 

The Datasets:

We chose these datasets because we thought it would best illustrate what we wanted to find. 

IMDB Movies Dataset
https://www.kaggle.com/datasets/harshitshankhdhar/imdb-dataset-of-top-1000-movies-and-tv-shows

![image](https://user-images.githubusercontent.com/100214297/170559020-47c173bb-9ea8-47cc-aac5-6f67c9ee8735.png)

Netflix Movies and TV Shows
https://www.kaggle.com/datasets/shivamb/netflix-shows 

![image](https://user-images.githubusercontent.com/100214297/170559212-75190924-06a5-4063-91dc-1d7164826f97.png)

Research Questions:

How many of IMDB’s top 1000 films are currently on Netflix?

What is the corresponding IMDB score for these films, has Netflix missed any major top rated films?

What genres are most common in IMDB’s top 1000? And what genres are Netflix currently showing? Possible suggestions for films to be added next month?

## Analysis 





# Extract, Transform & Load: how we came to our conclusions

## Extract 

We decided to extract the two CSV file sand examine both seperatly to see what we were working with.

![image](https://user-images.githubusercontent.com/100214297/170561035-3cd19ed7-49f6-4323-99c4-1270c8c16e99.png)

![image](https://user-images.githubusercontent.com/100214297/170561207-d16677e5-958e-4a2f-80af-0835a8553fe6.png)

## Transform

Many of the columns were not needed so we dropped many of them and then we renamed the column heads in both DataFrames to that we could concatanate the two DataFrames:

![image](https://user-images.githubusercontent.com/100214297/170561586-fbdabb58-d60d-4fed-a948-dc7d197f3243.png)

Lastly, we wanted to change the null values in the rows 'IMDB_Rating',	'Meta_score',	'No_of_Votes',	'Gross' - because we had many null values as there is clearly not many shows and films on Netflix that are also in the top 1000 IMDB rated list. We changed this to 'not currently in IMDB top 1000' to make it clear. 

![image](https://user-images.githubusercontent.com/100214297/170561912-2c75bd0b-caed-4a63-9a71-dbe504f0e1f4.png)

## Load 

We chose to load our DateFrames into PostgreSQL. We chose a relational database rather than a non-relational database (e.g. such as MongoDB) because we wanted to load our data into a fixed data template and visualise the table easily. 

 
