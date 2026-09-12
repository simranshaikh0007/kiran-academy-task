-- PART A
-- Task 1
CREATE DATABASE ecommerce_db;

-- Task 2
USE ecommerce_db;

-- Task 3
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    city VARCHAR(50),
    status VARCHAR(20)
);

-- Task 4
DESC products;

-- Task 5
SHOW TABLES;


-- PART B
-- Task 6
INSERT INTO products
VALUES (201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available');

-- Task 7
INSERT INTO products
VALUES (202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');

-- Task 8
INSERT INTO products
VALUES (203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available');

-- Task 9
INSERT INTO products
VALUES (204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available');

-- Task 10
INSERT INTO products
VALUES (205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');

-- Task 11
INSERT INTO products
VALUES (206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');

-- Task 12
INSERT INTO products
VALUES (207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available');

-- Task 13
INSERT INTO products
VALUES (208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available');

-- Task 14
INSERT INTO products
VALUES (209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available');

-- Task 15
INSERT INTO products
VALUES (210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');


-- PART C
-- Task 16
SELECT * FROM products;

-- Task 17
SELECT product_name FROM products;

-- Task 18
SELECT product_name, price FROM products;

-- Task 19
SELECT product_name, category, brand, price
FROM products;

-- Task 20
SELECT * FROM products
WHERE city = 'Pune';

-- Task 21
SELECT * FROM products
WHERE city = 'Mumbai';

-- Task 22
SELECT * FROM products
WHERE category = 'Mobile';

-- Task 23
SELECT * FROM products
WHERE category = 'Laptop';

-- Task 24
SELECT * FROM products
WHERE price > 30000;

-- Task 25
SELECT * FROM products
WHERE price < 30000;

-- Task 26
SELECT * FROM products
WHERE price = 35000;

-- Task 27
SELECT * FROM products
WHERE price >= 45000;

-- Task 28
SELECT * FROM products
WHERE price <= 30000;

-- Task 29
SELECT * FROM products
WHERE quantity > 10;

-- Task 30
SELECT * FROM products
WHERE quantity < 10;


-- PART D
-- Task 31
SELECT * FROM products
WHERE city = 'Pune' AND category = 'Mobile';

-- Task 32
SELECT * FROM products
WHERE city = 'Mumbai' AND status = 'Available';

-- Task 33
SELECT * FROM products
WHERE price > 30000 AND quantity > 5;

-- Task 34
SELECT * FROM products
WHERE price >= 30000 AND price <= 60000;

-- Task 35
SELECT * FROM products
WHERE city = 'Pune' OR city = 'Mumbai';

-- Task 36
SELECT * FROM products
WHERE category = 'Mobile' OR category = 'Laptop';

-- Task 37
SELECT * FROM products
WHERE quantity < 10 OR price > 50000;

-- Task 38
SELECT * FROM products
WHERE category = 'Mobile' AND price > 30000;

-- Task 39
SELECT * FROM products
WHERE brand = 'Samsung' OR brand = 'Apple';

-- Task 40
SELECT * FROM products
WHERE city = 'Pune'
AND status = 'Available'
AND quantity > 10;

-- PART E
-- Task 41
SELECT * FROM products
WHERE price BETWEEN 25000 AND 50000;

-- Task 42
SELECT * FROM products
WHERE quantity BETWEEN 5 AND 15;

-- Task 43
SELECT * FROM products
WHERE category IN ('Mobile', 'Laptop', 'Tablet');

-- Task 44
SELECT * FROM products
WHERE city IN ('Pune', 'Mumbai');

-- Task 45
SELECT * FROM products
WHERE brand NOT IN ('Samsung');

-- Task 46
SELECT * FROM products
WHERE status NOT IN ('Out of Stock');

-- Task 47
SELECT * FROM products
WHERE price <> 30000;

-- Task 48
SELECT * FROM products
WHERE product_name LIKE 'Galaxy%';

-- Task 49
SELECT * FROM products
WHERE product_name LIKE '%Pad%';

-- Task 50
SELECT * FROM products
WHERE category = 'Mobile'
AND (price > 30000 OR quantity > 15);


-- PART F
-- Task 51
UPDATE products
SET price = 34000
WHERE product_id = 201;

-- Task 52
UPDATE products
SET quantity = 12
WHERE product_id = 202;

-- Task 53
UPDATE products
SET status = 'Available'
WHERE product_id = 206;

-- Task 54
SET SQL_SAFE_UPDATES=0;
UPDATE products
SET price = price + 2000
WHERE category = 'Mobile';

-- Task 55
UPDATE products
SET quantity = quantity + 5
WHERE city = 'Pune';

-- Task 56
UPDATE products
SET status = 'Out of Stock'
WHERE quantity < 5;

-- PART G
-- Task 57
DELETE FROM products
WHERE product_id = 210;

-- Task 58
DELETE FROM products
WHERE price < 8000;

-- Task 59
DELETE FROM products
WHERE status = 'Out of Stock'
AND quantity < 5;

-- Task 60
DELETE FROM products
WHERE category = 'Tablet'
AND price > 30000;