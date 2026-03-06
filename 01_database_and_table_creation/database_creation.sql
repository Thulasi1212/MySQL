create database git_repo;
show databases;

use git_repo;

show tables;

create table departments(
dep_id int  auto_increment primary key,
dep_name varchar(25) not null unique,
location varchar(25)
);

desc departments;
-- dep_id is a primary key(no null values and no duplicates) only one per table
-- dep_name is a unique key(no duplicates, allows null values) one or more per table

INSERT INTO departments (dep_name, location)
VALUES
('Engineering', 'Hyderabad'),
('Human Resources', 'Bangalore'),
('Finance', 'Mumbai'),
('Marketing', 'Delhi');

select * from departments;

create table employees(
emp_id int auto_increment primary key,
name varchar(40) not null,
email varchar(50) not null check (email like '%@gmail.com'),
age int check(age>21),
salary decimal(10,2) default 30000,
dep_id int,
foreign key(dep_id) references departments (dep_id)
);
show tables;

desc employees;
-- dep_id is foreign key from departments table, age constraint check(>21)
-- emp_id has auto_increment, email has a constraint check for proper format('@gmail.com'), salary has a default value if not given as input(30000)

INSERT INTO employees (name, email, age, salary, dep_id)
VALUES
('Rahul Sharma', 'rahul.sharma@gmail.com', 28, 65000, 1),
('Anita Verma', 'anita.verma@gmail.com', 32, 72000, 1),
('Karan Mehta', 'karan.mehta@gmail.com', 30, 60000, 2),
('Priya Nair', 'priya.nair@gmail.com', 26, 58000, 3),
('Arjun Reddy', 'arjun.reddy@gmail.com', 35, 90000, 1),
('Sneha Kapoor', 'sneha.kapoor@gmail.com', 27, 55000, 4);

select * from employees;

-- salary will be recorded with default value (30000)
insert into employees (name,email,dep_id) values('Rohit Sharma','hitman@gmail.com',1);
select * from employees;

create table projects(
pro_id int auto_increment primary key,
pro_name varchar(100) not null,
start_date date check(year(start_date)<'2026'),
budget decimal(10,2) not null
);
desc projects;
-- year check for the start_date using YEAR('2025-09-09')=2025

INSERT INTO projects (pro_name, start_date, budget)
VALUES
('AI Recruitment System', '2024-01-15', 500000),
('Financial Analytics Platform', '2024-03-01', 750000),
('Marketing Automation Tool', '2024-02-10', 300000),
('Employee Wellness Portal', '2024-04-05', 200000);

SELECT * FROM PROJECTS;

create table emp_pro(
assign_id int auto_increment primary key,
emp_id int,
pro_id int,
assign_date date default (current_date())
);
desc emp_pro;

-- emp_pro table connects these two tables using foreign keys (employees,projects) 

INSERT INTO emp_pro (emp_id, pro_id)
VALUES
(1, 1),
(2, 1),
(3, 4),
(4, 2),
(5, 2),
(6, 3),
(1, 2),
(2, 3);

select * from emp_pro;

show tables;

-- sample query joining multiple tables
-- retreieving employee names and project they are doing along with the budget

select e.name,p.pro_name,p.budget 
from employees e 
join emp_pro ep on e.emp_id=ep.emp_id
join projects p on ep.pro_id=p.pro_id;
