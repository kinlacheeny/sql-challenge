CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL ,
	birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(1) NOT NULL, 
	hire_date DATE NOT NULL, 
);

employees
--
emp_no INT pk
emp_title_id FK >- titles.title_id
birth_date date
first_name varchar(50)
last_name varchar(50)
sex Boolean
hire_date date