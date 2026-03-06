# 02 WHERE Conditions

This section demonstrates how to filter data from tables using the **WHERE clause** in MySQL.

The `WHERE` clause is used to retrieve only those rows that satisfy specific conditions. It helps narrow down query results by applying logical, comparison, and pattern-matching operations.

## Topics Covered

* Basic filtering using comparison operators (`>`, `<`, `>=`, `<=`, `=`)
* Using logical operators (`AND`, `OR`)
* Range filtering using `BETWEEN`
* Matching patterns using `LIKE`
* Filtering multiple values using `IN`
* Excluding values using `!=` or `<>`

## Example Queries

### Filtering with Comparison Operators

```sql
SELECT *
FROM employees
WHERE age > 30;
```

### Using AND Condition

```sql
SELECT *
FROM employees
WHERE salary > 50000 AND age > 30;
```

### Using OR Condition

```sql
SELECT *
FROM employees
WHERE dep_id = 1 OR dep_id = 3;
```

### Using BETWEEN

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 70000;
```

### Using LIKE for Pattern Matching

```sql
SELECT name
FROM employees
WHERE name LIKE 'A%';
```

### Using IN

```sql
SELECT *
FROM employees
WHERE dep_id IN (1,2,4);
```

### Filtering Project Data

```sql
SELECT *
FROM projects
WHERE budget > 400000;
```

## Purpose of This Section

The goal of this section is to practice filtering data effectively from tables. These queries demonstrate how different conditions can be applied to retrieve meaningful subsets of data from larger datasets.
