# Database and Table Creation

This section focuses on setting up the initial **MySQL database and tables** that will be used throughout this repository for practicing SQL queries and concepts.

## Topics Covered

* Creating a database
* Selecting a database using `USE`
* Creating relational tables
* Defining table constraints
* Establishing relationships between tables

## Tables Created

The database schema contains the following tables:

* **departments**
* **employees**
* **projects**
* **emp_pro**

These tables are connected through **primary key and foreign key relationships** to simulate a realistic relational database.

## Constraints Used

The following constraints are implemented while creating the tables:

| Constraint           | Purpose                                       |
| -------------------- | --------------------------------------------- |
| **PRIMARY KEY**      | Uniquely identifies each record in a table    |
| **AUTO_INCREMENT**   | Automatically generates unique IDs            |
| **NOT NULL**         | Ensures that a column cannot have NULL values |
| **UNIQUE**           | Ensures all values in a column are different  |
| **CHECK (age > 18)** | Ensures employees are older than 18           |
| **DEFAULT**          | Assigns default values if none are provided   |
| **FOREIGN KEY**      | Maintains relationships between tables        |

## Example Relationships

* `employees.dep_id` → references `departments.dep_id`
* `emp_pro.emp_id` → references `employees.emp_id`
* `emp_pro.pro_id` → references `projects.pro_id`

These relationships enable complex queries using **joins and relational operations** in later sections of the repository.

## File in This Section

| File                              | Description                                                        |
| --------------------------------- | ------------------------------------------------------------------ |
| `01_database_and_table_creation.sql` | Creates the database and tables with constraints and relationships |

## Purpose

This schema forms the **foundation for practicing advanced SQL concepts** later in the repository such as:

* Joins
* Subqueries
* CTEs
* Aggregations
* Views
* Window functions
