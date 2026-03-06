# 03 Aggregate Functions

This section demonstrates the use of **aggregate functions** in MySQL.
Aggregate functions perform calculations on multiple rows of data and return a single result.

These functions are commonly used in data analysis to summarize datasets.

## Topics Covered

* COUNT()
* SUM()
* AVG()
* MAX()
* MIN()

## Example Queries

### Counting Records

```sql
SELECT COUNT(*) 
FROM employees;
```

### Average Salary

```sql
SELECT AVG(salary)
FROM employees;
```

### Total Salary

```sql
SELECT SUM(salary)
FROM employees;
```

### Highest Salary

```sql
SELECT MAX(salary)
FROM employees;
```

### Lowest Salary

```sql
SELECT MIN(salary)
FROM employees;
```

### Project Budget Analysis

```sql
SELECT AVG(budget)
FROM projects;
```

## Purpose

The purpose of this section is to understand how aggregate functions can summarize data and provide insights from large datasets.
