# SQL ORDER BY

The ORDER BY clause is used to sort query results based on one or more columns.

## Syntax

```sql
SELECT column1, column2
FROM table_name
ORDER BY column_name [ASC  DESC];
```

 ASC → Ascending order (default)
 DESC → Descending order

## Examples

### Ascending Order

```sql
SELECT name, salary
FROM employees
ORDER BY salary ASC;
```

### Descending Order

```sql
SELECT name, salary
FROM employees
ORDER BY salary DESC;
```

### Multiple Columns

```sql
SELECT name, dep_id, salary
FROM employees
ORDER BY dep_id ASC, salary DESC;
```

### With LIMIT (Top Records)

```sql
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;
```

## Key Points

 Sorts the result of a query
 Default order is ascending
 Can sort by multiple columns
 Usually written at the end of the query
