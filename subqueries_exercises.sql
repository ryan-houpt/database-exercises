use employees;

SELECT concat(first_name, " ", last_name) as 'Name', hire_date as 'Hire Date'
FROM employees
WHERE hire_date IN (
  select hire_date
  from employees
  WHERE emp_no = 101010
);

SELECT title as 'Title', count(*)
FROM titles
WHERE emp_no IN (
  select emp_no
  from employees
  WHERE first_name = 'Aamod')
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE gender = 'F' AND emp_no IN (
  select emp_no
  from dept_manager
  WHERE to_date > NOW());

SELECT dept_name
FROM departments
WHERE dept_no IN (
  select dept_no
  from dept_manager
  WHERE to_date > NOW() and emp_no IN (
    select emp_no
    from employees
    where gender = 'F'
  ));

select first_name, last_name
from employees
where emp_no IN (
  select emp_no
  from salaries
  where salary IN (
    select max(salary) from salaries
  ));

SHOW create table employees;

INSERT INTO ad (description, text) VALUES
('bobzilla2012', 'test'),
('joezilla2012', 'test'),
('billyzilla2012', 'test'),
('adamzilla2012', 'test'),
('janezilla2012', 'test'),
('mikezilla2012', 'test');

INSERT INTO categories (cat_name) VALUES ('for sale');
INSERT INTO categories (cat_name) VALUES ('job');
INSERT INTO categories (cat_name) VALUES ('buying');
INSERT INTO categories (cat_name) VALUES ('for sale');

