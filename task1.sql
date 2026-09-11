#PART A
-- Task 1
CREATE DATABASE company_db;

-- Task 2
USE company_db;

-- Task 3
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);

-- Task 4
DESC employees;

-- Task 5
SHOW TABLES;


#PART B
-- Task 6
INSERT INTO employees
VALUES (101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active');

-- Task 7
INSERT INTO employees
VALUES (102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active');

-- Task 8
INSERT INTO employees
VALUES (103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active');

-- Task 9
INSERT INTO employees
VALUES (104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active');

-- Task 10
INSERT INTO employees
VALUES (105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive');

-- Task 11
INSERT INTO employees
VALUES (106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');



#PART C
-- Task 12
SELECT * FROM employees;

-- Task 13
SELECT employee_name FROM employees;

-- Task 14
SELECT employee_name, salary FROM employees;

-- Task 15
SELECT employee_name, department, city FROM employees;

-- Task 16
SELECT * FROM employees
WHERE city = 'Pune';

-- Task 17
SELECT * FROM employees
WHERE city = 'Mumbai';

-- Task 18
SELECT * FROM employees
WHERE department = 'Development';

-- Task 19
SELECT * FROM employees
WHERE department = 'Testing';

-- Task 20
SELECT * FROM employees
WHERE status = 'Active';

-- Task 21
SELECT * FROM employees
WHERE status = 'Inactive';

-- Task 22
SELECT * FROM employees
WHERE employee_id = 103;

-- Task 23
SELECT * FROM employees
WHERE employee_name = 'Priya Sharma';

-- Task 24
SELECT * FROM employees
WHERE salary > 40000;

-- Task 25
SELECT * FROM employees
WHERE salary < 40000;

-- Task 26
SELECT * FROM employees
WHERE salary = 35000;

-- Task 27
SELECT * FROM employees
WHERE salary >= 42000;

-- Task 28
SELECT * FROM employees
WHERE city = 'Pune' AND status = 'Active';

-- Task 29
SELECT * FROM employees
WHERE department = 'Development' AND salary > 45000;

-- Task 30
SELECT * FROM employees
WHERE city = 'Pune' OR city = 'Mumbai';


#PART D
-- Task 31
UPDATE employees
SET salary = 48000
WHERE employee_id = 101;

-- Task 32
UPDATE employees
SET status = 'Active'
WHERE employee_id = 105;

-- Task 33
UPDATE employees
SET city = 'Pune'
WHERE employee_id = 104;

-- Task 34
UPDATE employees
SET department = 'Development'
WHERE employee_id = 102;

-- Task 35
UPDATE employees
SET salary = 45000
WHERE employee_id = 106;

-- Task 36
UPDATE employees
SET salary = salary + 3000
WHERE employee_id = 103;

-- Task 37
SET SQL_SAFE_UPDATES=0;
UPDATE employees
SET salary = salary + 2000
WHERE department = 'Testing';

-- Task 38
UPDATE employees
SET city = 'Mumbai Branch'
WHERE city = 'Mumbai';



#PART E
-- Task 39
DELETE FROM employees
WHERE employee_id = 105;

-- Task 40
DELETE FROM employees
WHERE employee_name = 'Rohan Deshmukh';

-- Task 41
DELETE FROM employees
WHERE status = 'Inactive';

-- Task 42
DELETE FROM employees
WHERE salary < 30000;

-- Task 43
DELETE FROM employees
WHERE employee_id = 104;

#PART F
-- Task 44
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- Task 45
ALTER TABLE employees
ADD COLUMN mobile VARCHAR(15);

-- Task 46
ALTER TABLE employees
MODIFY COLUMN city VARCHAR(100);

-- Task 47
ALTER TABLE employees
RENAME COLUMN employee_name TO name;

-- Task 48
ALTER TABLE employees
DROP COLUMN mobile;

-- Task 49
ALTER TABLE employees
ADD COLUMN experience INT;

-- Task 50
UPDATE employees
SET experience = 2
WHERE employee_id = 101;


#PART G
-- Task 51
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

-- Task 52
INSERT INTO departments
VALUES (1, 'Development', 'Pune');

INSERT INTO departments
VALUES (2, 'Testing', 'Mumbai');

INSERT INTO departments
VALUES (3, 'HR', 'Nashik');

-- Task 53
SELECT * FROM departments;

-- Task 54
UPDATE departments
SET location = 'Pune Branch'
WHERE department_id = 1;

-- Task 55
DELETE FROM departments
WHERE department_id = 3;

-- Task 56
RENAME TABLE departments TO company_departments;

-- Task 57
DESC company_departments;

-- Task 58
TRUNCATE TABLE company_departments;

-- Task 59
DROP TABLE company_departments;

-- Task 60
SHOW TABLES;