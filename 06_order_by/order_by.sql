use git_repo;

show tables;

select * from employees;

-- Display all employees sorted by salary in ascending order.
select name,salary 
from employees 
order by salary asc;

-- Display all employees sorted by salary in descending order.
select name,salary 
from employees 
order by salary desc;

-- Retrieve employee names and ages sorted by age.
select name,age 
from employees 
order by age asc;

-- Display employees sorted by department ID.
select * 
from employees 
order by dep_id;

-- Retrieve projects sorted by budget in descending order.
select * 
from projects 
order by budget desc;

-- Display employees sorted by department ID and then by salary.
select name,dep_id,salary 
from employees 
order by dep_id ,salary ;

-- Display employees sorted by department ID ascending and salary descending.
select name,dep_id,salary 
from employees 
order by dep_id asc,salary desc;

-- Display employees sorted by age first and then by salary.
select name,age,salary 
from employees 
order by age,salary;

-- Display projects sorted by budget and then by project name.
select pro_name,budget 
from projects 
order by budget,pro_name;

-- Display employees sorted by salary and then by age.
select name,salary,age 
from employees 
order by salary,age;

--  Retrieve the top 3 highest paid employees.
select name,salary 
from employees 
order by salary desc limit 3;

-- Retrieve the 5 employees with the lowest salary.
select name,salary 
from employees 
order by salary limit 5;

--  Display the project with the highest budget.
select pro_name,budget 
from projects 
order by budget desc limit 1;

--  Display the project with the lowest budget.
select pro_name,budget 
from projects 
order by budget asc limit 1;

--  Retrieve the 2 oldest employees.
select name,age 
from employees 
order by age desc limit 2;

--  Display departments with highest total salary (use GROUP BY and ORDER BY).
select dep_id,sum(salary) as dep_salary 
from employees 
group by dep_id 
order by dep_salary desc limit 1;

-- Display departments with lowest average salary.
select dep_id,avg(salary) as dep_avg 
from employees 
group by dep_id 
order by dep_avg limit 1;

--  Show employees older than 30 sorted by salary.
select name,age,salary 
from employees 
where age>30 
order by salary;

-- Show employees with salary greater than 50000 sorted by age.
select name,salary,age 
from employees 
where salary>50000 
order by age;

--  Display projects with budget greater than 300000 sorted by budget.
select pro_name,budget 
from projects 
where budget>300000 
order by budget;