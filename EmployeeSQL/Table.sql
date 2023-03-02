drop table if exists employees;
drop table if exists departments;
drop table if exists titles;
drop table if exists dept_emp;
drop table if exists salaries;
drop table if exists dept_manager;

-- Create department table

CREATE TABLE departments (
   dept_no VARCHAR(30),
   dept_name VARCHAR(30) NOT NULL,
   PRIMARY KEY (dept_no)
);

select * from departments;

-- Create dept_emp table

CREATE TABLE dept_emp (
      Debtemp_no INTEGER NOT NULL,
	  dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp

-- create table employees

SELECT datname FROM pg_database WHERE datname = 'Module9';

ALTER DATABASE "Module9" SET datestyle TO "ISO, MDY";

create table employees (
     emp_no integer not null,
     emp_title_id varchar(30) not null,
     birth_date date not null,
     first_name varchar(30) not null,
     last_name varchar (30) not null,
     sex varchar (30) not null,
	 hire_date date not null,
  Primary key (emp_no)
);

select * from employees;

-- Create table dept_manager

CREATE TABLE dept_manager (
      dept_no VARCHAR(30) NOT NULL,
      emp_no INTEGER NOT NULL,
   FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
   FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;

-- create table salaries

create table salaries (
      emp_no int not null,
      salary int not null,
    Primary Key (emp_no),
	Foreign key (emp_no) references employees(emp_no)
);

select * from salaries;

-- create table titles 

create table titles (
     title_id VARCHAR (30) NOT NULL,
	 title VARCHAR (30) NOT NULL,
   Primary Key (title_id)
);

select * from titles;


