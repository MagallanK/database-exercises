
# 2 below
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# 3 below
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

# 4 below
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 49;

