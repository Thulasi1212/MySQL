use git_repo;

show tables;

select * from  departments;
select * from employees;
select * from emp_pro;
select * from projects;

select * from departments where location in ('Delhi','Hyderabad');

-- Retrieve all employees details whose age is greater than 30.
select * from employees where age>30;

-- Find employees details whose salary is greater than 60000.
select * from employees where salary>60000;

-- Display employees details who belong to department_id = 2.
select * from employees where dep_id=2;

-- Retrieve employees details whose age is less than or equal to 25.
select * from employees where age<=25;

-- Find employees details whose salary is greater than 50000 AND age is greater than 30.
select * from employees where salary>50000 and age>30;

-- Retrieve employees details who belong to department 1 OR department 3.
select * from employees where dep_id =1 or dep_id=3;

-- Find employees details whose salary is between 50000 and 70000.
select * from employees where salary between 50000 and 70000;

-- Find employees whose name starts with 'A'.
select name from employees where name like 'A%';

-- Find employees whose name ends with 'a'.
select name from employees where name like '%a';

-- Find employees whose name contains 'ar'.
select name from employees where name like '%ar%';

-- Retrieve employees who belong to department 1, 2, or 4.
select * from employees where dep_id in (1,2,4);

-- Find projects with budget greater than 400000.
select * from projects where budget>400000;

-- Retrieve projects with budget less than 300000.
select * from projects where budget<300000;

-- Find employees whose age > 25 AND salary > 60000.
select name from employees where age>25 and salary>60000;

-- Find employees whose age is between 25 and 35 AND department_id = 2.
select name from employees where age between 25 AND 35 and dep_id=2;

-- Retrieve employees whose salary is NOT equal to 50000.
select name from employees where salary!=50000;

-- Find projects whose budget is between 300000 and 800000.
select pro_name from projects where budget between 300000 and 800000;