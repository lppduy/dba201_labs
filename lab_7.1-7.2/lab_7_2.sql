-- EASY:

-- Bài 1: Revising Aggregations - The Sum Function

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

-- Bài 2: Revising Aggregations - Averages

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';

-- Bài 3: Average Population

SELECT ROUND(AVG(POPULATION)) 
FROM CITY;

-- Bài 4: Japan Population

SELECT SUM(POPULATION) 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';

-- Bài 5: Population Density Difference

SELECT MAX(POPULATION) - MIN(POPULATION) 
FROM CITY;

-- Bài 6: The Blunder

SELECT ROUND(AVG(salary)) - ROUND(AVG(REPLACE(salary,0, ''))) from employees;

-- Bài 7: Top Earners

SELECT SALARY*MONTHS AS ER, COUNT(*) FROM EMPLOYEE GROUP BY ER DESC LIMIT 1;

-- Bài 8: Weather Observation Station 2

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) 
from STATION;

-- Bài 9: Weather Observation Station 4

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

-- Bài 10: Weather Observation Station 5

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY)ASC, CITY
LIMIT 1;

SELECT CITY, LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY)DESC, CITY
LIMIT 1;

-- Bài 11: Weather Observation Station 13

SELECT ROUND(SUM(LAT_N), 4) 
FROM STATION 
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

-- Bài 12: Weather Observation Station 14

SELECT ROUND(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N < 137.2345;

-- Bài 13: Weather Observation Station 15

SELECT ROUND(LONG_W, 4) 
FROM STATION 
WHERE LAT_N = (
    SELECT MAX(LAT_N) 
    FROM STATION 
    WHERE LAT_N < 137.2345
);

-- Bài 14: Weather Observation Station 16

SELECT ROUND(MIN(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7780;

-- Bài 15: Weather Observation Station 17

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (
    SELECT MIN(LAT_N)
    FROM STATION
    WHERE LAT_N > 38.7780
);

-- Bài 16: Weather Observation Station 18



-- Bài 17: New Companies 

SELECT c.company_code, c.founder,
    COUNT(DISTINCT e.lead_manager_code),
    COUNT(DISTINCT e.senior_manager_code),
    COUNT(DISTINCT e.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM company AS c
JOIN employee AS e ON c.company_code = e.company_code 
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;

-- MEDIUM:
-- Bài 18: Weather Observation Station 19

SELECT ROUND((MAX(LAT_N) - MIN(LAT_N)) + (MAX(LONG_W) - MIN(LONG_W)) , 4) FROM station;

