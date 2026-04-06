------------------------------------------------------------
-------------Count how many rows are in employees-----------
------------------------------------------------------------
SELECT COUNT(*) AS total_employees
FROM employees;
-------------------------------------------------------------------------
-- Find the minimum, maximum, and average salary across ALL salaries--
-------------------------------------------------------------------------
SELECT
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary,
    AVG(salary) AS avg_salary
FROM salaries;
-------------------------------------------------------------------------
------count how many distinct titles exist in titles------------------
------------------------------------------------------------------------
SELECT COUNT(DISTINCT title) AS distinct_titles
FROM titles;
-------------------------------------------------------------------------------------
--for current salaries only (to_date = '9999-01-01'), compute min, max, avg salary---
---------------------------------------------------------------------------------------
SELECT
    MIN(salary) AS min_current_salary,
    MAX(salary) AS max_current_salary,
    AVG(salary) AS avg_current_salary
FROM salaries
WHERE to_date = '9999-01-01';
-------------------------------------------------------------------------------------
----------- Show earliest and latest hire_date-------------
--------------------------------------------------------------------------------
SELECT
    MIN(hire_date) AS earliest_hire,
    MAX(hire_date) AS latest_hire
FROM employees;
-----------------------------------------------------------------------------------
-------------------show minimum and maximum current salary (whole table)-----
------------------------------------------------------------------------------------
SELECT
    MIN(salary) AS min_current_salar,
    MAX(salary) AS max_current_salar
FROM salaries;
-----------------------------------------------------------------------------------------
-----------------Count employees hired in year 1990---------------
----------------------------------------------------------------------------------------
SELECT count(*) as hired_in_1990
FROM employees
WHERE YEAR(hire_date) = 1990 ;
-----------------------------------------------------------------------------------------
---------------------------count employees currently holding title ‘Senior --------------
-----------------------------------------------------------------------------------------
SELECT COUNT(*) AS current_senior_engineers
FROM titles
WHERE title = 'Senior Engineer'
  AND to_date = '9999-01-01';
----------------------------------------------------------------------------------------
--------------------Sum of all current salaries-----------------------------------
--------------------------------------------------------------------------------------
SELECT SUM(salary) AS total_current_salaries
FROM salaries
-----------------------------------------------------------------------------------------
-----------------sum of all salaries ever paid to a chosen employee---------------------
------------------------------------------------------------------------------------------
SELECT SUM(salary) AS total_salary_for_employee
FROM salaries
WHERE emp_no = 10001;
-----------------------------------------------------------------------------------------
--------------Compute average current salary-------------------------------------
---------------------------------------------------------------------------------
SELECT AVG(salary) AS avg_current_salary
FROM salaries;
--------------------------------------------------------------------------------------------
---------------------ompute average salary per title (all history, using JOIN)-------------
--------------------------------------------------------------------------------------------
SELECT
    t.title,
    AVG(s.salary) AS avg_salary
FROM titles t
JOIN salaries s 
    ON t.emp_no = s.emp_no
    AND s.from_date <= t.to_date
    AND s.to_date >= t.from_date
GROUP BY t.title;
