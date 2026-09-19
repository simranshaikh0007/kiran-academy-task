-- PART A 

use company_db;
DESC employees;
SELECT COUNT(*) AS total_employees
FROM employees;
SELECT * FROM employees;

-- PART B
-- Task 1
SELECT *FROM employees
WHERE city = 'Pune';
-- Task 2
SELECT *FROM employees
WHERE city = 'Mumbai';
-- Task 3
SELECT *FROM employees
WHERE department = 'IT';
-- Task 4
SELECT *FROM employees
WHERE department = 'HR';
-- Task 5
SELECT *FROM employees
WHERE department = 'Sales';
-- Task 6
SELECT *FROM employees
WHERE status = 'Active';
-- Task 7
SELECT *FROM employees
WHERE status = 'Inactive';
-- Task 8
SELECT *FROM employees
WHERE employee_id = 103;
-- Task 9
SELECT *FROM employees
WHERE employee_name = 'Priya Sharma';
-- Task 10
SELECT *FROM employees
WHERE salary = 35000;
-- Task 11
SELECT *FROM employees
WHERE city != 'Pune';
-- Task 12
SELECT *FROM employees
WHERE department <> 'Testing';


-- PART C
-- Task 13
SELECT *FROM employees
WHERE salary > 40000;
-- Task 14
SELECT *FROM employees
WHERE salary < 35000;
-- Task 15
SELECT *FROM employees
WHERE salary >= 50000;
-- Task 16
SELECT *FROM employees
WHERE salary <= 30000;
-- Task 17
SELECT *FROM employees
WHERE joining_date > '2025-01-01';
-- Task 18
SELECT *FROM employees
WHERE joining_date <= '2024-12-31';
-- Task 19
SELECT *FROM employees
WHERE employee_id > 110;
-- Task 20
SELECT name, joining_date FROM employees
WHERE joining_date >= '2026-01-01';



-- PART D
-- Task 21
SELECT *FROM employees
WHERE city = 'Pune' AND status = 'Active';
-- Task 22
SELECT *FROM employees
WHERE department = 'IT' AND salary > 50000;
-- Task 23
SELECT *FROM employees
WHERE city = 'Mumbai' AND status = 'Inactive';
-- Task 24
SELECT *FROM employees
WHERE department = 'Sales' AND city = 'Pune' AND salary >= 42000;
-- Task 25
SELECT *FROM employees
WHERE department = 'HR' AND joining_date > '2025-06-01';
-- Task 26
SELECT *FROM employees
WHERE status = 'Active' AND salary >= 40000 AND salary <= 70000;
-- Task 27
SELECT *FROM employees
WHERE city = 'Mumbai' AND department = 'Testing' AND salary > 38000;
-- Task 28
SELECT *FROM employees
WHERE status = 'Active' AND joining_date >= '2026-01-01' AND salary > 45000;



-- PART E
-- Task 29
SELECT *FROM employees
WHERE city = 'Pune' OR city = 'Mumbai';
-- Task 30
SELECT *FROM employees
WHERE department = 'IT' OR department = 'HR';
-- Task 31
SELECT *FROM employees
WHERE salary < 32000 OR salary > 60000;
-- Task 32
SELECT *FROM employees
WHERE city = 'Nashik' OR salary > 55000;
-- Task 33
SELECT *FROM employees
WHERE NOT (department = 'HR');
-- Task 34
SELECT *FROM employees
WHERE NOT (status = 'Inactive');
-- Task 35
SELECT *FROM employees
WHERE (city = 'Pune' OR city = 'Mumbai') AND status = 'Active';
-- Task 36
SELECT *FROM employees
WHERE city != 'Pune' AND salary > 40000;



-- PART F 
-- Task 37
SELECT *FROM employees
WHERE salary BETWEEN 35000 AND 55000;
-- Task 38
SELECT *FROM employees
WHERE salary NOT BETWEEN 40000 AND 65000;
-- Task 39
SELECT *FROM employees
WHERE joining_date BETWEEN '2025-01-01' AND '2025-12-31';
-- Task 40
SELECT *FROM employees
WHERE employee_id BETWEEN 105 AND 115;
-- Task 41
SELECT *FROM employees
WHERE department IN ('IT', 'HR', 'Sales');
-- Task 42
SELECT *FROM employees
WHERE city IN ('Pune', 'Mumbai', 'Nagpur');
-- Task 43
SELECT *FROM employees
WHERE department NOT IN ('Testing', 'Support');
-- Task 44
SELECT *FROM employees
WHERE city NOT IN ('Mumbai', 'Nashik');
-- Task 45
SELECT *FROM employees
WHERE employee_id IN (101, 105, 110, 115, 120);
-- Task 46
SELECT *FROM employees
WHERE department IN ('IT', 'Sales') AND salary BETWEEN 45000 AND 75000;



-- PART G
-- Task 47
SELECT *FROM employees
WHERE name LIKE 'A%';
-- Task 48
SELECT *FROM employees
WHERE name LIKE 'R%';
-- Task 49
SELECT *FROM employees
WHERE name LIKE '%a';
-- Task 50
SELECT *FROM employees
WHERE name LIKE '%sh%';
-- Task 51
SELECT *FROM employees
WHERE name LIKE 'P%a';
-- Task 52
SELECT *FROM employees
WHERE name LIKE '_____';
-- Task 53
SELECT *FROM employees
WHERE name LIKE '_a%';
-- Task 54
SELECT *FROM employees
WHERE name NOT LIKE 'R%';


-- PART H
-- Task 55
SELECT *FROM employees
WHERE email IS NULL;
-- Task 56
SELECT *FROM employees
WHERE email IS NOT NULL;
-- Task 57
SELECT *FROM employees
WHERE city = 'Pune'AND email IS NULL;
-- Task 58
SELECT *FROM employees
WHERE status = 'Active' AND email IS NOT NULL AND salary > 40000;

-- PART I
-- Task 59
SELECT *FROM employees
WHERE status = 'Active'
AND city IN ('Pune', 'Mumbai')AND department IN ('IT', 'Sales')
AND salary BETWEEN 40000 AND 70000 AND joining_date > '2025-01-01';
-- Task 60
SELECT *FROM employees
WHERE (name LIKE 'S%' OR name LIKE 'R%') 
AND email IS NOT NULL AND status = 'Active' AND city IN ('Pune', 'Nashik');