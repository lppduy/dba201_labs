-- Yêu cầu 1: Tạo database tên shirts_db.
CREATE DATABASE shirts_db;

-- Sử dụng database vừa tạo
USE shirts_db;

-- Yêu cầu 2: Từ database shirts_db tạo table shirts
CREATE TABLE shirts (
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT,
    PRIMARY KEY (shirt_id)
);

-- Yêu cầu 3: Insert các dữ liệu vào bảng shirts
INSERT INTO shirts (article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- Yêu cầu 4: Truy vấn tất cả các hàng và các cột trong bảng shirts
SELECT * FROM shirts;

-- Yêu cầu 5: Hiển thị lại các table hiện có trong database shirts_db.
SHOW TABLES;

-- Thêm mới một bản ghi (hàng) với thông tin như sau:
INSERT INTO shirts (article, shirt_size, last_worn) VALUES ('polo shirt', 'M', 50);

-- Yêu cầu 6: Truy vấn tất cả các hàng của bảng shirts nhưng chỉ lấy cột article và color
SELECT article, color FROM shirts;

-- Yêu cầu 7: Truy vấn tất cả các hàng của bảng shirts có shirt_size là M, kết quả trả về sẽ là tất cả các cột, ngoại trừ cột shirt_id
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';

-- Yêu cầu 8: Update shirt_size thành L của các hàng có article là polo shirt
UPDATE shirts SET shirt_size = 'L' WHERE article = 'polo shirt';

-- Yêu cầu 9: Xoá tất cả các hàng có last_worn là 200
DELETE FROM shirts WHERE last_worn = 200;