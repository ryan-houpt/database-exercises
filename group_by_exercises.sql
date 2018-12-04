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


select concat(emp_no, " ", "-" , " ", last_name, ",", " ", first_name) as full_name, birth_date as DOB from employees limit 10;
