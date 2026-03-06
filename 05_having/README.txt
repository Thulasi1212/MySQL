# 05 – HAVING Clause

## Overview

This section demonstrates the use of the **HAVING clause** in MySQL.

While the `WHERE` clause filters rows **before grouping**, the `HAVING` clause filters results **after the GROUP BY operation**. It is mainly used when working with **aggregate functions**.

---

## Concepts Covered

* Filtering grouped results using **HAVING**
* Using **HAVING with aggregate functions**
* Combining **WHERE + GROUP BY + HAVING**
* Applying conditions on aggregated data

---

## Tables Used

The queries in this section use:

* **employees**
* **projects**

These tables contain employee information such as salary, age, and department ID, along with project budget details.

---

## Example Operations

The queries perform operations such as:

* Finding departments with more than a certain number of employees
* Identifying departments with high average salaries
* Filtering departments based on total salary
* Detecting duplicate project budgets
* Applying conditions on grouped results

---

## Purpose

The goal of this section is to understand how **HAVING helps filter grouped and aggregated data**, which is a common requirement in SQL analytics and reporting.

---

## Files in this Folder

* **05_having.sql** – Contains SQL queries demonstrating HAVING usage
* **README.md** – Documentation explaining the concepts covered
