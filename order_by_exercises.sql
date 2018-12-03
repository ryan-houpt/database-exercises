USE employees;

SELECT * FROM Employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT first_name, last_name, hire_date
FROM employees
WHERE last_name LIKE ('E%')
ORDER BY emp_no DESC;

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND hire_date LIKE '%-12-25'
ORDER BY hire_date ASC, birth_date ASC;


SELECT first_name, last_name, hire_date
FROM employees
WHERE first_name LIKE 'd%';