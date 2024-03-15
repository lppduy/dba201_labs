USE book_data;

-- yc1

SELECT COUNT(*) AS number_book FROM books;

-- yc2

SELECT released_year, COUNT(*) AS number_of_books
FROM books
GROUP BY released_year
ORDER BY released_year;

-- yc3

SELECT SUM(stock_quantity) AS sum_stock
FROM books;

-- yc4

SELECT AVG(released_year) AS avg_released_year
FROM books
GROUP BY author_fname, author_lname;

-- yc5

SELECT CONCAT(author_fname, ' ', author_lname) AS fullname, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);