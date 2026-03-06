use git_repo;

show tables;
select * from employees;

-- Count the number of employees in each department.
select 
dep_id,count(*) as number_of_employees
from employees group by dep_id;

-- Find the average salary of employees in each department.
select 
dep_id,avg(salary) as dep_avg_salary 
from employees group by dep_id;

-- Find the total salary paid in each department.
select
dep_id,sum(salary) as total_dep_salary
from employees group by dep_id;

-- Find the maximum salary in each department.
select 
dep_id,max(salary) as dep_max_salary
from employees group by dep_id;

-- Find the minimum salary in each department.
select
dep_id,min(salary) as dep_min_salary
from employees group by dep_id;

-- Count the number of employees for each department and age.
select 
dep_id,age,count(*)
from employees group by dep_id ,age;

-- Find the average salary grouped by department and age.
select
dep_id,age,avg(salary)
from employees group by dep_id,age;

-- Find the total budget of projects grouped by project name.
select 
pro_name,sum(budget)
from projects group by pro_name;

-- Count how many projects have the same budget value.
select 
count(*)
from projects group by budget;

-- Find the number of employees in each department whose salary is greater than 50000.
select 
count(*) as num_of_employees
from employees where salary>50000 group by dep_id ;

-- Find the average salary in each department where employee age is greater than 30.
select 
dep_id,avg(salary) as dep_avg_salary
from employees where age>30 group by dep_id;

-- Find the department that has the highest total salary.
select 
dep_id , sum(salary) as dep_sum
from employees group by dep_id order by dep_sum desc limit 1;

-- Find the department with the maximum average salary.
select
dep_id,avg(salary) as dep_avg
from employees group by dep_id order by dep_avg desc limit 1;

-- Find the number of employees in each department where age is between 25 and 35.
select
dep_id,count(*) 
from employees  where age between 25 and 35 group by dep_id;