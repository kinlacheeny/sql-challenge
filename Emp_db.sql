-- Create tables from csv. 
--DROP TABLE departments;
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;
----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
-- Create TABLE for dept_emp
--DROP TABLE dept_emp
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;
----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
-- Create table for dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL, 
	emp_no INT NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;
----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
-- Create table for employees
--DROP TABLE employees;
CREATE TABLE employees (
	emp_no INT NOT NULL, 
	emp_title_id VARCHAR NOT NULL, 
	birth_date DATE NOT NULL, 
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	sex VARCHAR NOT NULL, 
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id) 
);

SELECT * FROM employees;
----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
-- Create table for salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL, 
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;
----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----
-- Create table for titles
--DROP TABLE titles;
CREATE TABLE titles (
	title_id VARCHAR NOT NULL, 
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles;
----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----



