use git_repo;

show tables;

select * from employees;

-- Find the total number of employees in the company.
select count(*) from employees;

-- Find the number of employees in department 2.
select count(*) from employees where dep_id=2;

-- Count how many projects exist in the projects table.
select count(*) from projects;

-- Find the number of employees whose salary is greater than 60000.
select count(*) from employees where salary>60000;

-- Find the total salary paid to all employees.
select sum(salary) from employees;

-- Find the total salary paid to employees in department 1.
select sum(salary) from employees where dep_id=1;

-- Find the total project budget of all projects.
select sum(budget) from projects;

-- Find the total budget of projects whose budget is greater than 400000.
select sum(budget) from projects where budget>400000;

-- Find the average salary of all employees.
select avg(salary) from employees;

-- Find the average salary of employees in department 3.
select avg(salary) from employees where dep_id=3;

-- Find the average budget of all projects.
select avg(budget) from projects;

-- Find the highest salary among employees.
select max(salary) from employees;

-- Find the project with the highest budget.
select pro_name from projects where budget= (select max(budget) from projects);

-- Find the lowest salary among employees.
select min(salary) from employees;

-- Find the project with the smallest budget.
select pro_name from projects where budget=(select min(budget) from projects);

-- Find the average salary of employees whose age is greater than 30.
select avg(salary) from employees where age>30;

-- Find the total salary of employees whose salary is greater than 50000.
select sum(salary) from employees where salary>50000;

-- Find the maximum project budget where budget is less than 700000.
select max(budget) from projects where budget<700000;
