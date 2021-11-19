USE test_db;

# 2 this seems more specific in what needs to be completed for the exercise.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# 2 does this work the same as above? Or which is more efficient? Readability wise I like the above code.
SELECT *
FROM employees
WHERE first_name
  AND last_name
ORDER BY first_name, last_name;

# 3 below
SELECT *
FROM employees
WHERE first_name
  AND last_name
ORDER BY last_name DESC, first_name;

# 4 below
SELECT *
FROM employees
ORDER BY first_name DESC, last_name;

# 5 below
SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

# ------------------------------------FUNCTIONS EXERCISES -----------------------#

# 2 START AND END WITH E updated DURING REVIEW to show employees who start and with E in first and last_names.
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE first_name LIKE '%E'
AND first_name LIKE 'E%'
AND last_name LIKE '%E'
AND last_name LIKE 'E%';
# 2 CONT. BY LAST NAME START AND END WITH E
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE '%E'
AND last_name LIKE 'E%';

# 3 EMPLOYEES BORN ON CHRISTMAS
SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

# 4 EMPLOYEES HIRED IN 90S AND BORN XMAS
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25;

# 5 HIRED 90S, BORN XMAS FIRST SHOULD BE OLDEST EMPLOYEE
SELECT *
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY hire_date DESC, birth_date;

# 6 USING DATEDIFF() BORN XMAS HIRED IN 90S, HOW MANY DAYS WORKING AT COMPANY
SELECT DATEDIFF(CURDATE(), '1990-12-25');
SELECT DATEDIFF(CURDATE(), '1991-12-25');
SELECT DATEDIFF(CURDATE(), '1992-12-25');
SELECT DATEDIFF(CURDATE(), '1993-12-25');
SELECT DATEDIFF(CURDATE(), '1994-12-25');
SELECT DATEDIFF(CURDATE(), '1995-12-25');
SELECT DATEDIFF(CURDATE(), '1996-12-25');
SELECT DATEDIFF(CURDATE(), '1997-12-25');
SELECT DATEDIFF(CURDATE(), '1998-12-25');
SELECT DATEDIFF(CURDATE(), '1999-12-25');
