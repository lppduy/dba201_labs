USE book_data;

-- Yêu cầu 1: Viết truy vấn để tìm cuốn sách có số pages lớn nhất

SELECT title, pages FROM books
ORDER BY pages DESC
LIMIT 1;

-- Yêu cầu 2: Viết truy vấn để hiển thị title và released_year của 3 cuốn sách gần thời điểm hiện tại nhất
SELECT title, released_year FROM books
ORDER BY released_year DESC
LIMIT 3;

-- Yêu cầu 3 : Viết truy vấn để hiển thị title và author_lname của tất cả các cuốn sách có author_lname chứa ký tự khoảng trắng (' ')
SELECT title, author_lname FROM books
WHERE author_lname LIKE '% %';

-- Yêu cầu 4: Viết truy vấn để hiển thị title, released_year và stock_quantity của 3 cuốn sách có stock_quantity nhỏ nhất
SELECT title, released_year, stock_quantity FROM books
ORDER BY stock_quantity ASC
LIMIT 3;

-- Yêu cầu 5: Viết truy vấn để hiển thị title, author_lname và sắp xếp theo thứ tự ưu tiên là author_lname  sau đó đến title.
SELECT title, author_lname FROM books
ORDER BY author_lname ASC, title ASC;