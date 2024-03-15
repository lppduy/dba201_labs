-- Yêu cầu 1: Thực hiện các truy vấn

-- Lấy thời gian hiện tại
SELECT CURTIME();

-- Lấy ngày hiện tại
SELECT CURDATE();

-- Lấy số thứ tự của ngày trong tuần cho ngày hiện tại (1 cho Chủ Nhật đến 7 cho Thứ Bảy)
SELECT DAYOFWEEK(CURDATE());

-- Lấy số thứ tự của ngày trong tuần cho ngày và giờ hiện tại (1 cho Chủ Nhật đến 7 cho Thứ Bảy)
SELECT DAYOFWEEK(NOW());

-- Lấy số thứ tự của ngày trong tuần cho ngày và giờ hiện tại (1 cho Thứ Hai đến 7 cho Chủ Nhật)
SELECT DATE_FORMAT(NOW(), '%w') + 1;

-- Lấy tên của ngày trong tuần cho ngày và giờ hiện tại
SELECT DAYNAME(NOW());

-- Lấy tên của ngày trong tuần cho ngày và giờ hiện tại
SELECT DATE_FORMAT(NOW(), '%W');

-- Lấy ngày hiện tại theo định dạng 'mm/dd/yyyy'
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

-- Lấy ngày và giờ hiện tại theo định dạng 'Tháng Ngày lúc hh:mm'
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

-- Yêu cầu 2: INSERT dữ liệu thời gian

-- Tạo bảng tweets
CREATE TABLE tweets (
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);

-- Insert dữ liệu vào bảng tweets
INSERT INTO tweets (content, username) VALUES ('this is my first tweet', 'coltscat');
INSERT INTO tweets (content, username) VALUES ('this is my second tweet', 'coltscat');

-- Truy vấn hiển thị dữ liệu của bảng tweets
SELECT * FROM tweets;
-- định dạng: 'this is my first tweet', 'coltscat', '2024-03-15 18:22:25'
