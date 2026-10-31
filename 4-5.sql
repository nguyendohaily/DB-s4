USE test_db;

-- 1. Tạo bảng employees trước
CREATE TABLE IF NOT EXISTS employees (
    emp_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_year INT,
    department VARCHAR(50),
    salary DECIMAL(12, 2),
    phone VARCHAR(20)
);

-- 2. Chèn dữ liệu vào bảng employees
INSERT INTO employees (emp_id, full_name, birth_year, department, salary, phone)
VALUES
    ('EMP01', 'Nguyễn Tuấn Anh', 1995, 'IT', 18000000, '0901234567'),
    ('EMP02', 'Trần Thị Mai', 1998, 'HR', 12000000, '0912345678'),
    ('EMP03', 'Lê Hoàng Anh', 2000, 'Marketing', 9500000, NULL),
    ('EMP04', 'Phạm Minh Đức', 1992, 'IT', 22000000, '0934567890'),
    ('EMP05', 'Vũ Thùy Linh', 1996, 'Finance', 15000000, '0945678901'),
    ('EMP06', 'Đỗ Quỳnh Anh', 1999, 'HR', 11000000, NULL),
    ('EMP07', 'Bùi Văn Hùng', 1990, 'Sales', 45000000, '0967890123'),
    ('EMP08', 'Hoàng Nhật Minh', 1997, 'IT', 14000000, NULL),
    ('EMP09', 'Đặng Thảo Vân', 2001, 'Sales', 48000000, '0989012345'),
    ('EMP10', 'Ngô Quốc Bảo', 1994, 'Logistics', 10500000, '0990123456');

SELECT * 
FROM employees
WHERE salary BETWEEN 10000000 AND 20000000;

SELECT * 
FROM employees
WHERE department IN ('IT', 'HR');

SELECT * 
FROM employees
WHERE full_name LIKE '%Anh%';

SELECT * 
FROM employees
WHERE phone IS NULL;

UPDATE employees
SET salary = salary * 1.10
WHERE department = 'IT';

SELECT emp_id, full_name, department, salary 
FROM employees 
WHERE department = 'IT';