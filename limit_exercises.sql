use employees;

SELECT first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND hire_date LIKE '%-12-25'
ORDER BY hire_date ASC, birth_date ASC
LIMIT 5 OFFSET 100;