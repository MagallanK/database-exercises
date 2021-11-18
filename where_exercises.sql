USE test_db;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE ('E%'); # THE % INDICATES REMAINING CHARACTERS. This shows Start with E, if it was %E it would be ends with E.
SELECT *
FROM employees
WHERE last_name LIKE ('%q%'); #The double % with q in between is to show if that letter q is present.


# --------------------------- OPTION 2 --------------------
SELECT *
FROM employees
WHERE gender = 'M' AND (first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE ('%E')
OR last_name LIKE ('E%');

SELECT *
FROM employees
WHERE last_name LIKE ('%E')
AND last_name LIKE ('E%');

SELECT *
FROM employees
WHERE last_name LIKE ('%q%')
AND last_name NOT LIKE ('%qu%');

