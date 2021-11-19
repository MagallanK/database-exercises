USE employees;

# 2 SHOW TITLES
SELECT DISTINCT title
FROM titles
GROUP BY title; # DON'T NEED THIS LINE. BUT PRACTICE IS PRACTICE.


# 3 GROUP BY START AND END WITH 'E' LAST NAME ONLY

SELECT last_name
FROM employees
WHERE last_name LIKE '%E' # CAN SHORTEN BY SAYING 'E%E' FOR START AND END WITH
AND last_name like 'E%'
GROUP BY last_name
ORDER BY last_name; # ADD THIS LINE TO ORDER ALPHABETICALLY.


# 4 Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E'
AND last_name like 'E%'
GROUP BY first_name, last_name
ORDER BY last_name; # ORDER BY LAST NAME TO BE ALPHABETICAL.


# 5 Find the unique last names with a 'q' but not 'qu'.
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# 6 Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT COUNT(*), last_name # THAT'S WHY IT WAS FLIPPED, IT WILL DISPLAY OFF ORDER THROUGH SELECT.
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;
# prints what is needed, but NOT in same order as example. count displays on right and names display on left.

# 7 Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.

SELECT COUNT(*), gender # FLIPPED HERE NOW DISPLAYS CORRECTLY AS IN EXAMPLE
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender
ORDER BY COUNT(*) DESC;
# same results as above where the count() is displayed on right and gender is on left. Example is flipped, but overall same results.
