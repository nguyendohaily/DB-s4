USE test_db;

-- 1. Thêm 2 cột còn thiếu vào bảng products
ALTER TABLE products ADD category VARCHAR(50);
ALTER TABLE products ADD quantity INT DEFAULT 0;

-- 2. Chèn dữ liệu vào bảng
INSERT INTO products (product_id, product_name, category, price, quantity)
VALUES
    ('P01', 'Laptop Dell Inspiron', 'Laptop', 16000000, 15),
    ('P02', 'Laptop Lenovo IdeaPad', 'Laptop', 13500000, 8),
    ('P03', 'Samsung Galaxy S23', 'Phone', 18000000, 20),
    ('P04', 'Samsung Galaxy Tab S9', 'Tablet', 12000000, 5),
    ('P05', 'iPad Gen 9', 'Tablet', 7500000, 0),
    ('P06', 'Tai nghe Sony WH-1000XM5', 'Audio', 6500000, 0);

SELECT * 
FROM products
WHERE price BETWEEN 5000000 AND 15000000;

SELECT * 
FROM products
WHERE category IN ('Laptop', 'Tablet');

SELECT * 
FROM products
WHERE product_name LIKE 'Sam%';

SELECT * 
FROM products
WHERE NOT category = 'Phone';
-- Hoặc: WHERE category <> 'Phone';

-- Cập nhật giá mới = giá cũ * 0.95
UPDATE products
SET price = price * 0.95
WHERE category = 'Laptop';

-- Kiểm tra lại sau khi giảm giá
SELECT product_id, product_name, category, price 
FROM products
WHERE category = 'Laptop';

-- Thực hiện xóa
DELETE FROM products
WHERE quantity = 0;

-- Kiểm tra lại toàn bộ bảng để xác nhận các sản phẩm tồn kho = 0 đã được xóa
SELECT * 
FROM products;