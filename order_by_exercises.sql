USE test_db;

# 2 this seems more specific in what needs to be completed for the exercise.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# 2 does this work the same as above? Or which is more efficient? Readability wise I like the above code.
SELECT *
FROM employees
WHERE first_name AND last_name
ORDER BY first_name, last_name;

# 3 below
SELECT *
FROM employees
WHERE first_name AND last_name
ORDER BY last_name DESC, first_name;

# 4 below
SELECT *
FROM employees
ORDER BY first_name DESC,  last_name;

# 5 below
SELECT *
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;