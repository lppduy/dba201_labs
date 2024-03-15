USE cat_app;

-- Yêu cầu 1: Tạo bảng people với các trường như sau

CREATE TABLE people (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

-- Yêu cầu 2: Thực hiện INSERT dữ liệu vào bảng people

INSERT INTO people(first_name, last_name, age) VALUES 
('Tina', 'Belcher', 13),
('Bob', 'Belcher', 42),
('Linda', 'Belcher', 45),
('Phillip', 'Frond', 38),
('Calvin', 'Fischoeder', 70);

-- Yêu cầu 3: Thực hiện truy vấn tất cả dữ liệu trong bảng people

SELECT * FROM people;

-- Yêu cầu 4: Thực hiện xóa bảng people

DROP TABLE people;

-- Yêu cầu 5: Kiểm tra bảng people chắc chắn đã được xoá bằng câu lệnh “show tables;“

SHOW TABLES;
