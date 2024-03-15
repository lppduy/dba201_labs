
-- Bài 1: Weather Observation Station 3

SELECT DISTINCT city FROM station
WHERE id % 2 = 0;
-- OR:
SELECT DISTINCT CITY FROM STATION
WHERE MOD(ID, 2) = 0;

-- Bài 2: Weather Observation Station 6

SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%';
-- OR:
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou]';

-- Bài 3: Weather Observation Station 7

SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u';
-- OR:
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '[aeiou]$';

-- Bài 4: Weather Observation Station 8

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';
-- OR:
SELECT DISTINCT CITY FROM STATION
WHERE (CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%')
AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');

-- Bài 5: Weather Observation Station 9

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou]';
-- OR:
SELECT DISTINCT CITY FROM STATION WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u');
-- OR:
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%';

-- Bài 6: Weather Observation Station 11

SELECT DISTINCT city FROM station
WHERE LEFT(city,1) NOT IN ('a','e','i','o','u')
OR RIGHT(city,1) NOT IN ('a','e','i','o','u');

-- Bài 7: Higher Than 75 Marks 

SELECT Name FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;

-- Bài 8: Type of Triangle 

SELECT CASE
    WHEN A + B > C AND A + C > B AND B + C > A THEN
        CASE
            WHEN A = B AND B = C THEN 'Equilateral'
            WHEN A = B OR B = C OR A = C THEN 'Isosceles'
            ELSE 'Scalene'
        END
    ELSE 'Not A Triangle'
END AS TriangleType
FROM TRIANGLES;

-- Bài 9: Employee Names
SELECT name 
FROM employee
ORDER BY name;