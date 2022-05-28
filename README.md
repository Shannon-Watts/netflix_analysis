# :tv: Netflix analysis 📺 

This project was completed by Chisimnulia Okoye, Sofia Kauser, and Shannon Watts.

## Research proposal

Our project focuses on two datasets sourced from Kaggle. We chose these datasets as we love to watch Netflix ... but we had run out of tv shows and films to watch. We wanted to see how many of IMDBs top 1000 films and tv series were on Netflix. Surely the most rated and top grossing films are the most interesting? So we sought to know these films/tv shows and how many of them were not on Netflix. 

**Research Questions:**

*How many of IMDB’s top 1000 films are currently on Netflix?*

*What is the corresponding IMDB score for these films, has Netflix missed any major top rated films?*

*What release year are most common in IMDB’s top 1000? Possible suggestions for films to be added next month?*

**The Datasets:**

We chose these datasets because we thought it would best illustrate what we wanted to find. 

IMDB Movies Dataset
https://www.kaggle.com/datasets/harshitshankhdhar/imdb-dataset-of-top-1000-movies-and-tv-shows

![image](https://user-images.githubusercontent.com/100214297/170559020-47c173bb-9ea8-47cc-aac5-6f67c9ee8735.png)

Netflix Movies and TV Shows
https://www.kaggle.com/datasets/shivamb/netflix-shows 

![image](https://user-images.githubusercontent.com/100214297/170559212-75190924-06a5-4063-91dc-1d7164826f97.png)


## Analysis :mag:

Our ETL on the Netflix and IMDB data allowed us to conclude some very interesting analysis...

We found some generally intersting things such as...

We were also able to answer our research questions through running queries on our newly structred database.

*How many of IMDB’s top 1000 films are currently on Netflix?*


*What is the corresponding IMDB score for these films, has Netflix missed any major top rated films?*


*What genres are most common in IMDB’s top 1000? And what genres are Netflix currently showing? Possible suggestions for films to be added next month?*




# Extract, Transform & Load: how we came to our conclusions

## Extract :open_file_folder:

We decided to extract the two CSV files and examine both separately to see what we were working with.

![image](https://user-images.githubusercontent.com/100214297/170561035-3cd19ed7-49f6-4323-99c4-1270c8c16e99.png)

![image](https://user-images.githubusercontent.com/100214297/170561207-d16677e5-958e-4a2f-80af-0835a8553fe6.png)

## Transform :broom:

Many of the columns were not needed so we dropped many of them and then we renamed the column heads in both DataFrames to that we could concatanate the two DataFrames:

![image](https://user-images.githubusercontent.com/100214297/170561586-fbdabb58-d60d-4fed-a948-dc7d197f3243.png)

Lastly, we wanted to change the null values in the rows 'IMDB_Rating',	'Meta_score',	'No_of_Votes',	'Gross' - because we had many null values as there is clearly not many shows and films on Netflix that are also in the top 1000 IMDB rated list. We changed this to 'not currently in IMDB top 1000' to make it clear. 

![image](https://user-images.githubusercontent.com/100214297/170561912-2c75bd0b-caed-4a63-9a71-dbe504f0e1f4.png)

We did run into one main issue when we tried to load the data to PostgreSQL - so we had to retrun to the transform stage and figure out what the issue was. We kept receiving an operational error related to 'PG'. The error promopted us to look at the row with title 'Apollo 13'. Upon further examination we found that the there was an original error in the CSV file. The 'certificate' which was 'PG' had been listed in the 'release_year' column. We rectified this by using .loc to find the exact row with the error. 

![image](https://user-images.githubusercontent.com/100214297/170679731-6e1db5d9-1ee1-4c0a-bacf-93136e33fcbf.png)

We changed the value to 0 - we recognise that this is an anomaly

![image](https://user-images.githubusercontent.com/100214297/170679980-e7042fc3-0abd-407e-82e4-ea59a8df6bf7.png)

## Load :fax:

We chose to load our DateFrames into PostgreSQL. We chose a relational database rather than a non-relational database (e.g. such as MongoDB) because we wanted to load our data into a fixed data template, visualise and manage the table easily. We also used a relatively small dataset (around 10,000 rows) which meant that PostgreSQL could handle our data and queries. We also wished to run queries on the data and view the results in tabular form. 

![image](https://user-images.githubusercontent.com/100214297/170824015-47c37fe6-8cc3-43e8-bbaf-19760bc7a1d8.png)


![image](https://user-images.githubusercontent.com/99673859/170675609-13b018ef-4612-4c74-babc-0613982108e2.png)

Our data was now ready for analysis... A snapshot of which is below:

![image](https://user-images.githubusercontent.com/100214297/170824023-c6a86e00-8877-4403-b158-ac9d8df36ac3.png)

![image](https://user-images.githubusercontent.com/100214297/170824026-21c3369d-8011-4b3f-ab0a-20cd6f878dfc.png)

![image](https://user-images.githubusercontent.com/100214297/170824030-ca225364-5da3-4451-a884-63032ef50b7a.png)

![image](https://user-images.githubusercontent.com/100214297/170824034-f59cd1cf-ba8b-46e4-961a-3f30b8d32e7a.png)

![image](https://user-images.githubusercontent.com/100214297/170824041-a1af932f-8eeb-4ea8-8194-5c6a7811607f.png)

![image](https://user-images.githubusercontent.com/100214297/170824047-3ccd3fe8-b936-42a7-ad48-440404705fe7.png)



