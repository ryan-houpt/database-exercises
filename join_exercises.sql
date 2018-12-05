use employees;

select departments.dept_name as 'Department Name', concat(employees.first_name, " ", employees.last_name) as 'Department Manager'
from departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date > NOW();

select departments.dept_name as 'Department Name', concat(employees.first_name, " ", employees.last_name) as 'Department Manager'
from departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
WHERE employees.gender = 'F' AND dept_manager.to_date > NOW();

select titles.title as 'Title', count(*) as 'Count'
from titles
JOIN employees
  ON employees.emp_no = titles.emp_no
JOIN dept_emp
  ON dept_emp.emp_no = employees.emp_no
JOIN departments
  ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name LIKE 'Customer Service' AND titles.to_date > NOW()
GROUP BY title;



select departments.dept_name as 'Department Name', concat(employees.first_name, " ", employees.last_name) as 'Department Manager', salaries.salary as Salary
from departments
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees
  ON employees.emp_no = dept_manager.emp_no
JOIN salaries
  ON salaries.emp_no = employees.emp_no
WHERE dept_manager.to_date > NOW() AND salaries.to_date > NOW()
ORDER BY `Department Name`;