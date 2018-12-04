use titles;

SELECT DISTINCT title
from titles;

select * from employees;

SELECT last_name, count(*)
FROM employees
WHERE last_name LIKE ('e%e')
GROUP BY first_name, last_name;

SELECT last_name, count(*)
FROM employees
WHERE last_name like ('%q%')
   and last_name not like ('%qu%')
GROUP BY last_name;


SELECT gender, count(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
