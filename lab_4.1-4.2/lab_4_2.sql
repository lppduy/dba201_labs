-- Yêu cầu 1: CONCAT và CONCAT_WS

SELECT CONCAT(author_fname, ' ', author_lname) AS fullname
FROM books;

SELECT CONCAT_WS('-',author_fname,author_lname) AS fullname
FROM books;

-- Yêu cầu 2: SUBSTRING
SELECT SUBSTRING('Hello', 1, 2) AS result;
SELECT SUBSTRING('data analyst', 6, 7) AS result; 
-- trong sql, index bắt đầu từ 1

-- Yêu cầu 3: REPLACE
SELECT REPLACE('data analyst', 'analyst', 'science') AS result;

UPDATE books
SET title = REPLACE(title, ' ', '->');

-- UPDATE books
-- SET title = REPLACE(title, '->', ' ');

-- Yêu cầu 4: REVERSE
SELECT REVERSE('data analyst') AS result;

-- Yêu cầu 5: CHAR_LENGTH
SELECT CHAR_LENGTH('database') AS character_count;

SELECT CHAR_LENGTH(title) AS title_length
FROM books;

-- Yêu cầu 6: UPPER

SELECT UPPER('database') AS uppercase_string;
SELECT UPPER(title) AS uppercase_title
FROM books;

-- Yêu cầu 7: LOWER
SELECT LOWER('database') AS lowercase_string;
SELECT LOWER(title) AS lowercase_title
FROM books;
