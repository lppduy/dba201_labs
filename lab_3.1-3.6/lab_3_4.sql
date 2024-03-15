USE cat_app;

-- Yêu cầu 1: Thay đổi name “jackson” thành “jack”
UPDATE cats SET name = 'Jack' WHERE name = 'Jackson';

-- Yêu cầu 2: Thay đổi name “Ringo” thành “Bitish Shorthair”
UPDATE cats SET name = 'Bitish Shorthair' WHERE name = 'Ringo';

-- Yêu cầu 3: Thay đổi age của tất cả các hàng có breed là “Maine Coon” thành 12 
UPDATE cats SET age = 12 WHERE breed = 'Maine Coon';

-- Yêu cầu 4: Xoá tất cả các hàng có age là 4
DELETE FROM cats WHERE age = 4;

-- Yêu cầu 5: Xoá tất cả các hàng có cat_id = age 
DELETE FROM cats WHERE cat_id = age;

-- Yêu cầu 6: Xoá tất cả các hàng.
DELETE FROM cats;