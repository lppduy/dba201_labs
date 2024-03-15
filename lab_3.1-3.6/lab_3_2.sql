USE cat_app;

-- Yêu cầu 1: Tạo  bảng unique_cats có các trường như sau:

CREATE TABLE unique_cats (
    cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

-- Yêu cầu 2: insert các dữ liệu sau lần lượt theo các cột cat_id, name, age cho bảng unique_cats và đưa ra nhận xét:

INSERT INTO unique_cats (cat_id, name, age)
VALUES (1, 'Fred', 23),
       (2, 'Louise', 3),
       (3, 'James', 3);

-- Yêu cầu 3: Tạo bảng unique_cats2

CREATE TABLE unique_cats2 (
    cat_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT
);

-- Yêu cầu 4:  insert các dữ liệu sau lần lượt theo các cột name, age cho bảng unique_cats2:

INSERT INTO unique_cats2 (name, age)
VALUES ('Skippy', 4),
       ('Jiff', 3),
       ('Jiff', 3),
       ('Jiff', 3),
       ('Skippy', 4);

-- Yêu cầu 5: Hiển thị tất cả dữ liệu của bảng unique_cats2 và đưa ra nhận xét về trường cat_id

SELECT * FROM unique_cats2;

-- Yêu cầu 6: Tạo bảng employees với các trường như sau:
CREATE TABLE employees (
    id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',

    PRIMARY KEY (id)
);


-- Yêu cầu 7: Insert dữ liệu lần lượt theo các cột first_name, last_name, age cho bảng employees như sau:
INSERT INTO employees (first_name, last_name, age)
VALUES ('Dora', 'Smith', 58);

-- Yêu cầu 8: Hiển thị tất cả dữ liệu trong bảng employees và đưa ra nhận xét về các cột id, middle_name, current_status.
SELECT * FROM employees;
-- Comments:
-- - Cột id chứa các giá trị duy nhất và là khóa chính của bảng employees.
-- - Cột middle_name cho phép lưu trữ tên đệm của nhân viên.
-- - Cột current_status chỉ ra trạng thái việc làm hiện tại của nhân viên.

