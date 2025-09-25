-- Task 3: Writing Basic SELECT Queries
-- Database: EMPLOYEEDB
-- Table: EMPLOYEE_DATA

-- View all records
SELECT * 
FROM EMPLOYEE_DATA;

-- Select specific columns
SELECT Emp_ID, Emp_Name, Department 
FROM EMPLOYEE_DATA;

-- Filtering with WHERE
SELECT Emp_ID, Emp_Name, Salary 
FROM EMPLOYEE_DATA
WHERE Salary > 50000;

-- Using AND, OR
SELECT Emp_Name, Department, Salary 
FROM EMPLOYEE_DATA
WHERE Department = 'IT' AND Salary > 60000;

SELECT Emp_Name, Department, Salary 
FROM EMPLOYEE_DATA
WHERE Department = 'HR' OR Department = 'Finance';

-- Using LIKE (find names containing 'an')
SELECT Emp_ID, Emp_Name 
FROM EMPLOYEE_DATA
WHERE Emp_Name LIKE '%an%';

-- Using BETWEEN
SELECT Emp_ID, Emp_Name, Salary 
FROM EMPLOYEE_DATA
WHERE Salary BETWEEN 40000 AND 70000;

-- Using IN
SELECT Emp_ID, Emp_Name, Department 
FROM EMPLOYEE_DATA
WHERE Department IN ('IT', 'Finance');

-- Sorting results
SELECT Emp_ID, Emp_Name, Salary 
FROM EMPLOYEE_DATA
ORDER BY Salary ASC;

SELECT Emp_ID, Emp_Name, Salary 
FROM EMPLOYEE_DATA
ORDER BY Salary DESC;

-- Limiting rows
SELECT TOP 2 Emp_ID, Emp_Name, Salary
FROM EMPLOYEE_DATA
ORDER BY Salary DESC;


-- Using DISTINCT
SELECT DISTINCT Department 
FROM EMPLOYEE_DATA;

-- Alias
SELECT Emp_Name AS Employee, Salary AS Monthly_Salary 
FROM EMPLOYEE_DATA;
