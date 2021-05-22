--Data Analysis

--List the following details of each employee: employee number, last name, first name, sex, salary
--Using inner join
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, employees.salary
FROM employees
JOIN salaries ON
employees.emp_no = salaries.emp_no

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--