use git_repo;

show tables;
select * from employees;

-- Find departments that have more than 2 employees.
select 
dep_id,count(*) as num_employees from employees 
group by dep_id having count(*)>2;

-- Find departments where the average salary is greater than 60000.
select
dep_id,avg(salary) as dep_avg_salary from employees 
group by dep_id having avg(salary)>60000;

-- Find departments where the total salary paid is greater than 150000.
select 
dep_id,sum(salary) as dep_sum_salary from employees 
group by dep_id having sum(salary)>150000;

-- Find project budgets where more than one project has the same budget.
select 
budget,count(*) as pro_count from projects
group by budget having count(*)>1;

-- Find departments where the maximum salary is greater than 70000.
select 
dep_id,max(salary) as dep_max from employees 
group by dep_id having max(salary)>70000;

-- Find departments where employees older than 30 have an average salary greater than 60000.
select 
dep_id,avg(age) avg_age from employees 
where age>30 group by dep_id having avg(salary)>60000;

-- Find departments where employees with salary greater than 50000 are more than 2.
select 
dep_id,count(*) as num_employees from employees 
where salary>50000 group by dep_id having count(*)>2;

-- Find departments where total salary of employees older than 25 exceeds 120000.
select 
dep_id,sum(salary) as dep_sum from employees 
where age>25 group by dep_id having sum(salary)>120000;

-- Find departments where the minimum salary is greater than 40000.
select 
dep_id,min(salary) as dep_min from employees 
group by dep_id having min(salary)>40000;

--  Find departments where the average employee age is greater than 30.
select 
dep_id,avg(age) as avg_age from employees 
group by dep_id having avg(age)>30;

select dep_id,avg(age) from employees group by dep_id;