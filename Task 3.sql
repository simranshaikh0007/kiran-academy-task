-- PART A

-- Task 1
CREATE DATABASE banking_db;

-- Task 2
USE banking_db;

-- Task 3
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20),
    customer_name VARCHAR(100),
    account_type VARCHAR(30),
    branch VARCHAR(50),
    city VARCHAR(50),
    balance DECIMAL(12,2),
    credit_score INT,
    status VARCHAR(20),
    opened_date DATE
);

-- Task 4
DESC accounts;

-- Task 5
SHOW TABLES;

-- PART B
-- Task 6
INSERT INTO accounts
VALUES (1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune',
85000, 780, 'Active', '2025-01-15');

-- Task 7
INSERT INTO accounts
VALUES (1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai',
145000, 810, 'Active', '2024-11-20');

-- Task 8
INSERT INTO accounts
VALUES (1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune',
42000, 735, 'Active', '2026-02-10');

-- Task 9
INSERT INTO accounts
VALUES (1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik',
67000, 760, 'Active', '2025-08-05');

-- Task 10
INSERT INTO accounts
VALUES (1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune',
18500, 690, 'Dormant', '2023-06-18');

-- Task 11
INSERT INTO accounts
VALUES (1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai',
225000, 825, 'Active', '2024-03-12');


-- PART C
-- Task 12
SELECT * FROM accounts;

-- Task 13
SELECT customer_name, account_number
FROM accounts;

-- Task 14
SELECT customer_name, account_type, balance, status
FROM accounts;

-- Task 15
SELECT * FROM accounts
WHERE account_type = 'Savings';

-- Task 16
SELECT * FROM accounts
WHERE city = 'Pune';

-- Task 17
SELECT * FROM accounts
WHERE balance > 50000;

-- Task 18
SELECT * FROM accounts
WHERE balance <= 50000;

-- Task 19
SELECT * FROM accounts
WHERE balance BETWEEN 50000 AND 200000;

-- Task 20
SELECT * FROM accounts
WHERE credit_score >= 750;

-- Task 21
SELECT * FROM accounts
WHERE status = 'Active';

-- Task 22
SELECT * FROM accounts
WHERE status = 'Dormant' OR status = 'Closed';

-- Task 23
SELECT * FROM accounts
WHERE city = 'Pune' AND status = 'Active';

-- Task 24
SELECT * FROM accounts
WHERE city = 'Mumbai' OR city = 'Nashik';

-- Task 25
SELECT * FROM accounts
WHERE account_type = 'Savings' OR account_type = 'Salary';

-- Task 26
SELECT * FROM accounts
WHERE balance NOT BETWEEN 25000 AND 100000;

-- Task 27
SELECT * FROM accounts
WHERE customer_name LIKE 'A%';

-- Task 28
SELECT * FROM accounts
WHERE customer_name LIKE '%a';

-- Task 29
SELECT * FROM accounts
WHERE branch LIKE '%Road%';

-- Task 30
SELECT * FROM accounts
ORDER BY balance DESC
LIMIT 3;

-- Task 31
SELECT * FROM accounts
LIMIT 5;

-- Task 32
SELECT * FROM accounts
LIMIT 3, 3;

-- Task 33
SELECT * FROM accounts
WHERE account_type = 'Savings'
AND city = 'Pune'
AND status = 'Active'
AND balance > 50000;

-- Task 34
SELECT * FROM accounts
WHERE city IN ('Pune', 'Mumbai', 'Nashik')
AND credit_score >= 750;

-- Task 35
SELECT * FROM accounts
WHERE balance > 100000
AND credit_score >= 800;

-- Task 36
SELECT * FROM accounts
WHERE balance BETWEEN 50000 AND 150000
OR credit_score > 800;

-- Task 37
SELECT * FROM accounts
WHERE status = 'Active'
AND account_type NOT IN ('Current');

-- Task 38
SELECT * FROM accounts
WHERE customer_name LIKE '%ar%';


-- PART D
-- Task 39
UPDATE accounts
SET balance = 95000
WHERE account_id = 1001;

-- Task 40
UPDATE accounts
SET status = 'Active'
WHERE account_id = 1005;

-- Task 41
UPDATE accounts
SET credit_score = 755
WHERE account_id = 1003;

-- Task 42
UPDATE accounts
SET branch = 'College Road'
WHERE account_id = 1004;

-- Task 43
UPDATE accounts
SET account_type = 'Premium Current'
WHERE account_id = 1002;

-- Task 44
UPDATE accounts
SET balance = balance + 25000
WHERE account_id = 1006;

-- Task 45
UPDATE accounts
SET balance = balance + 5000
WHERE account_type = 'Savings';

-- Task 46
UPDATE accounts
SET city = 'Pune City'
WHERE city = 'Pune';

-- Task 47
UPDATE accounts
SET credit_score = credit_score + 10
WHERE status = 'Active'
AND credit_score < 750;

-- Task 48
UPDATE accounts
SET status = 'Dormant'
WHERE balance < 20000;


-- PART E
-- Task 49
DELETE FROM accounts
WHERE account_id = 1005;

-- Task 50
DELETE FROM accounts
WHERE account_number = 'ACC10004';

-- Task 51
DELETE FROM accounts
WHERE status = 'Closed';

-- Task 52
DELETE FROM accounts
WHERE balance < 10000
OR credit_score < 600;

-- Task 53
DELETE FROM accounts
WHERE city = 'Pune City'
AND status = 'Dormant';

-- PART F
-- Task 54
ALTER TABLE accounts
ADD COLUMN email VARCHAR(100);

-- Task 55
ALTER TABLE accounts
ADD COLUMN mobile VARCHAR(15);

-- Task 56
ALTER TABLE accounts
MODIFY COLUMN branch VARCHAR(100);

-- Task 57
ALTER TABLE accounts
RENAME COLUMN customer_name TO name;

-- Task 58
ALTER TABLE accounts
DROP COLUMN mobile;


-- PART G
-- Task 59
-- Add account_category column
ALTER TABLE accounts
ADD COLUMN account_category VARCHAR(30);

-- update at least two records
UPDATE accounts
SET account_category = 'Premium'
WHERE account_id = 1001;
UPDATE accounts
SET account_category = 'Regular'
WHERE account_id = 1002;

-- Renmae table
RENAME TABLE accounts TO bank_accounts;

-- Task 60
-- Structure 
DESC bank_accounts;

-- Remove using Truncate
TRUNCATE TABLE bank_accounts;

-- Delete using Drop
DROP TABLE bank_accounts;

