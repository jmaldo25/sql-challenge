--Data Engineering
--Creating tables for each set
--Import data from each of the csv


--Not sure if needed but dropping tables if needed

DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE:
DROP TABLE IF EXISTS salaries CASCADE;


--Titles table
CREATE TABLE titles(
title_id VARCHAR(30) PRIMARY KEY NOT NULL,
title VARCHAR(30) NOT NULL);

--Employees table
CREATE TABLE employees(
emp_no INT PRIMARY KEY NOT NULL,
emp_title_id VARCHAR(30) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id));

--Departments table
CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY NOT NULL,
dept_name VARCHAR(30) NOT NULL);