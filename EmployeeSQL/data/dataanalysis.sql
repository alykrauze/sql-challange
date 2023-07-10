SELECT * FROM titles

SELECT * FROM employees

SELECT * FROM salaries

SELECT * FROM departments

SELECT * FROM dept_emp

SELECT * FROM dept_manager

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries 
ON employees.emp_no = salaries.emp_no;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

SELECT dept_manager.emp_no, departments.dept_name, departments.dept_no, employees.first_name, employees.last_name
FROM departments
JOIN dept_manager 
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;

SELECT dept_emp.emp_no, departments.dept_name, departments.dept_no, employees.last_name, employees.first_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no 
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no 
WHERE departments.dept_name = 'Sales';

SELECT departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no 
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
