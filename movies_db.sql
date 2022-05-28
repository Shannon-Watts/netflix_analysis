CREATE TABLE Movies_db (
genre VARCHAR ,
title VARCHAR NOT NULL,
director VARCHAR,
release_year INT,
runtime TEXT,
listed_in VARCHAR,
overview TEXT,
"IMDB_Rating" FLOAT,
"Meta_score" FLOAT,
"No_of_Votes" FLOAT,
"Gross" INT
);

SELECT * FROM Movies_db;

Drop table Movies_db;

--show avg rating of the films and tv shows that are on both Netflix and IMDB
SELECT AVG("IMDB_Rating") FROM Movies_db Where "IMDB_Rating" IS NOT Null


--show avg gross films and tv shows that are on both Netflix and IMDB top 1000
SELECT ROUND(AVG("Gross")) FROM Movies_db Where "Gross" IS NOT Null


--Release Year count of show films & tv shows that are on Netflix and IMDB
SELECT release_year, COUNT(title) FROM Movies_db GROUP BY release_year ORDER BY count Desc


--Highest rated IMDB films not on Netflix
SELECT title, "IMDB_Rating"
FROM Movies_db
GROUP BY release_year
WHERE listed_in IS  NULL
ORDER BY "IMDB_Rating" Desc Limit 5

--IMDB Films relased in 2018
SELECT title, "IMDB_Rating"
FROM Movies_db
WHERE release_year = 2018
AND listed_in IS NULL