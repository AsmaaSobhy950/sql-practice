-- Get all employees
select* 
from employees

--Show all columns for any 10 rows from employees
SELECT *
FROM employees
LIMIT 10;

-- Show only emp_no, first_name, last_name from employees
SELECT emp_no, first_name, last_name
FROM employees;

-- From departments, list dept_no and dept_name
SELECT dept_no, dept_name
FROM departments;

-- From salaries, show emp_no, salary, from_date, to_date for any 5 rows
SELECT emp_no, salary, from_date, to_date
FROM salaries
LIMIT 5;

-- List the distinct title values from titles
SELECT DISTINCT title
FROM titles;

--List distinct gender values from employees
SELECT DISTINCT gender
FROM employees;

--List distinct department names (dept_name) from departments
SELECT DISTINCT dept_name
FROM departments;
---sql where---
--Employees whose first_name = 'Georgi'
SELECT *
FROM employees
WHERE first_name = 'Georgi';

--Employees hired after 1999‑01‑01
SELECT *
FROM employees
WHERE hire_date > '1999-01-01';

--Salaries greater than 120000
SELECT *
FROM salaries
WHERE salary > '120000';

--Titles where the title contains 'Engineer'
SELECT *
FROM titles
WHERE title LIKE '%Engineer%';

--Employees with birth_date between 1960‑01‑01 and 1965‑12‑31
SELECT *
FROM employees
WHERE birth_date BETWEEN '1960-01-01' AND '1965-12-31';

--------SQL ORDER BY--------
--List employees (emp_no, first_name, last_name) ordered by hire_date ASC
SELECT emp_no, first_name, last_name
FROM employees
ORDER BY hire_date ASC;

--List the 20 most recent hires ordered by hire_date DESC
SELECT emp_no, CONCAT(first_name, ' ', last_name) AS name, hire_date
FROM employees
ORDER BY hire_date DESC
LIMIT 20;

--List departments ordered alphabetically by dept_name
SELECT dept_no, dept_name
FROM departments
ORDER BY dept_name ;

--Employees where gender = 'F' AND hire_date ≥ '2000-01-01'
SELECT *
FROM employees
WHERE gender = 'F'
  AND hire_date >= '2000-01-01';
--From salaries: salary ≥ 100000 AND to_date = '9999-01-01'
SELECT *
FROM salaries
WHERE salary >= 100000
  AND to_date = '9999-01-01';

------------------SQL OR-----------------
--Employees whose first_name = 'Georgi' OR 'Parto'
SELECT *
FROM employees
WHERE first_name = 'Georgi'
   OR first_name = 'Parto';

--Titles where title is 'Engineer' OR 'Senior Engineer'
SELECT *
FROM titles
WHERE title = 'Engineer'
   OR title = 'Senior Engineer';
----------------- SQL NOT --------------------
-- Show employees not of gender 'M'
SELECT *
FROM employees
WHERE gender != 'M';

--Show departments whose name does NOT contain the word 'Sales'
SELECT *
FROM departments
WHERE dept_name NOT LIKE '%Sales%';

