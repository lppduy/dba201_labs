-- Bài 1: Rvising the select query I
SELECT *
FROM CITY
WHERE CountryCode = 'USA' AND Population > 100000;

-- Bài 2: Revising the Select Query II
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 120000;

-- Bài 3: Select all
SELECT *
FROM CITY;
-- Bài 4: Japanese Cities' Attributes
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';
-- Bài 5: Japanese Cities' Names
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';
-- Bài 6: Weather Observation Station 1
SELECT CITY, STATE
FROM STATION;