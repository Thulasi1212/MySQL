# 07 Joins

This section covers **SQL JOIN operations** used to combine data from multiple tables based on a related column.

## Types of Joins

### INNER JOIN
Returns only the records that have matching values in both tables.

### LEFT JOIN
Returns all records from the left table and matching records from the right table. If no match exists, NULL values are returned.

### RIGHT JOIN
Returns all records from the right table and matching records from the left table. If no match exists, NULL values are returned.

### FULL JOIN
Returns all records when there is a match in either table.

## Example Tables
- `employees`
- `departments`
- `projects`
- `emp_pro` (employee-project mapping)

## Topics Covered
- Employee and department relationships
- Employee project assignments
- Employees without projects
- Projects with employees from multiple departments
- Department employee analysis using joins

These queries help understand **real-world relational database relationships and data retrieval across multiple tables**.