# 04 – GROUP BY Queries

## Overview

This section contains SQL queries that demonstrate how to use the **GROUP BY** clause in MySQL.
`GROUP BY` is used to organize rows into groups based on one or more columns, allowing aggregate functions to be applied to each group.

In these queries, grouping is mainly performed on **department IDs, employee attributes, and project details** to analyze counts, totals, averages, and other aggregated information.

---

## Concepts Covered

The following SQL concepts are practiced in this section:

* Using **GROUP BY** with aggregate functions
* Grouping data by a **single column**
* Grouping data by **multiple columns**
* Using **COUNT()** to count rows in groups
* Using **SUM()** to calculate totals
* Using **AVG()** to calculate averages
* Using **MAX()** and **MIN()** to find extreme values
* Combining **WHERE conditions with GROUP BY**
* Using **ORDER BY and LIMIT** to identify highest or lowest aggregated results

---

## Tables Used

The queries in this section use the following tables:

* **employees**
* **projects**

These tables contain employee details such as age, salary, and department ID, along with project information like project name and budget.

---

## Example Operations Performed

The queries in this file perform operations such as:

* Counting employees in each department
* Calculating average salary per department
* Calculating total salary paid by each department
* Finding maximum and minimum salaries per department
* Grouping employees by both department and age
* Counting projects that share the same budget
* Filtering rows using `WHERE` before grouping
* Identifying departments with the highest total or average salaries

---

## Purpose

The goal of this section is to understand how **GROUP BY helps summarize large datasets** by grouping rows and applying aggregate calculations.
This is an important concept in SQL used frequently for **data analysis and reporting**.

---

## Files in this Folder

* **04_group_by.sql** → Contains all SQL queries demonstrating GROUP BY usage
* **README.md** → Documentation explaining the queries and concepts covered
