use git_repo;

show tables;

select * from employees;

-- JOIN/INNER JOIN: match from both tables
SELECT e.name, d.dep_name
FROM employees e
INNER JOIN departments d
ON e.dep_id = d.dep_id;

-- LEFT JOIN: all rows from left table and matching rows from the right(allows NULL values)
SELECT e.name, d.dep_name
FROM employees e
LEFT JOIN departments d
ON e.dep_id = d.dep_id;

-- RIGHT JOIN: all rows from the right table and only common rows from the left(allows NULL values)
SELECT e.name, d.dep_name
FROM employees e
RIGHT JOIN departments d
ON e.dep_id = d.dep_id;

-- CROSS JOIN: every row from one table to every row in the other(all possible outcomes) 
SELECT e.name, p.pro_name
FROM employees e
CROSS JOIN projects p;

SELECT e.name AS employee,
       m.name AS manager
FROM employees e
LEFT JOIN employees m
ON e.dep_id = m.dep_id;

SELECT e.name, p.pro_name, p.budget
FROM employees e
JOIN emp_pro ep 
ON e.emp_id = ep.emp_id
JOIN projects p 
ON ep.pro_id = p.pro_id;


select * from departments;
-- Display employee names and their department names.
select e.name,d.dep_name 
from employees e  
join departments d 
on e.dep_id=d.dep_id;

select * from employees;
insert into employees (name,email,age,salary) values('Jack Sparrow','jacksparrow@gmail.com',45,55500);

-- Display all employees and their departments (include employees without departments).
select e.name,d.dep_name 
from employees e 
left join departments d 
on e.dep_id=d.dep_id;

-- Display all departments and employees working in them.
select d.dep_name,e.name 
from departments d 
join employees e 
on d.dep_id=e.dep_id;

-- Display employees and the projects they are working on.
select e.name,p.pro_name 
from employees e 
join  emp_pro ep on e.emp_id=ep.emp_id
join projects p on ep.pro_id=p.pro_id;

-- Display all employees who are not assigned to any project.
select e.name 
from employees e 
left join emp_pro ep on e.emp_id=ep.emp_id
where ep.pro_id is NULL;

-- Display project names and employees working on each project.
select p.pro_name,e.name 
from projects p 
join emp_pro ep on p.pro_id=ep.pro_id
join employees e on ep.emp_id=e.emp_id;

-- Display employees and their project budgets.
select e.name,p.budget
from employees e 
join emp_pro ep on e.emp_id=ep.emp_id
join projects p on ep.pro_id=p.pro_id;

-- Display departments and total salary of employees in each department.
select d.dep_name,sum(e.salary) as sum_of_salary
from departments d
join employees e on d.dep_id=e.dep_id
group by d.dep_id;

-- Display employees working in departments with more than 3 employees.
select e.name
from employees e
join (select dep_id 
from employees
group by dep_id
having count(*)>3) d 
on e.dep_id=d.dep_id;

-- Find the department with the highest total salary.
select d.dep_name
from departments d 
join (select dep_id,sum(salary) as sal_sum 
from employees 
group by dep_id order by sal_sum desc limit 1) e 
on d.dep_id=e.dep_id;


-- Find the department with the lowest average salary.
select d.dep_name
from departments d
join (select dep_id,avg(salary) as avg_sal
from employees
group by dep_id order by avg_sal limit 1) e on d.dep_id=e.dep_id;

-- Find the project with the highest budget and its employees.
select p.pro_name,e.name
from projects p
join emp_pro ep on p.pro_id=ep.pro_id
join employees e on ep.emp_id=e.emp_id
where p.budget=(select max(budget) from projects);

-- Count number of employees working in each project.
select p.pro_name,count(p.pro_name) as num_of_emp 
from projects p
join emp_pro ep on p.pro_id=ep.pro_id
join employees e on ep.emp_id=e.emp_id
group by p.pro_name;

-- Find departments with more than 3 employees.
select d.dep_name,d.dep_id,count(d.dep_name) as num_of_emp
from departments d 
join employees e on d.dep_id=e.dep_id
group by dep_id
having num_of_emp>3;

select * from emp_pro;
select * from projects;
-- Find employees working on more than one project.
select name,EP.pro_id 
from employees E 
join emp_pro EP on E.emp_id=EP.emp_id
right join
(select count(e.name) as num_of_pro,ep.pro_id 
from employees e 
join emp_pro ep on e.emp_id=ep.emp_id
group by ep.pro_id
having num_of_pro>1) d on EP.pro_id=d.pro_id;

-- Find projects that have no employees assigned.
select p.pro_id,e.name 
from projects p
left join emp_pro ep on p.pro_id=ep.pro_id
left join employees e on ep.emp_id=e.emp_id
where e.name is NULL;   -- EVERY PROJECT HAS BEEN ASSIGNED TO EMPLOYEES

-- Find top 3 departments with highest average salary.
select d.dep_name,avg(e.salary) as avg_sal
from departments d
join employees e on d.dep_id=e.dep_id
group by d.dep_id order by avg_sal desc limit 3;

-- Find employees working on the project with the highest budget.
select e.name 
from employees e
join emp_pro ep on e.emp_id=ep.emp_id
join projects p on ep.pro_id=p.pro_id
where p.pro_id=(select pro_id 
from projects 
order by budget desc limit 1);


-- Find employees who work on all projects.
select e.name,count(ep.emp_id) as num_of_proj 
from emp_pro ep 
join projects p on ep.pro_id=p.pro_id
join employees e on ep.emp_id=e.emp_id
group by ep.emp_id
having num_of_proj>(select count(pro_name) from projects)
;

-- Find projects where employees from multiple departments work together.
select p.pro_name
from projects p
join emp_pro ep on p.pro_id=ep.pro_id
join employees e on ep.emp_id=e.emp_id
group by pro_name
having count(distinct(e.dep_id))>1;
