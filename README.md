# SQL Employee Management System Project

## Project Overview
This repository contains a series of SQL assignments focused on designing, implementing, and querying a relational database for employee management. The project covers the complete SQL workflow, from initial schema definition to complex data analysis.

## Key Features
* **Schema Design:** Creating structured tables for `Employees`, `Departments_info`, and `Locations`.
* **Data Integrity:** Implementing Primary Keys, Foreign Keys, and CHECK constraints (e.g., ensuring age >= 18).
* **Data Manipulation:** Performing `INSERT`, `UPDATE`, and `TRUNCATE` operations.
* **Advanced Querying:** * Using Aggregate functions: `SUM`, `AVG`, `MIN`, `MAX`, and `COUNT`.
    * Data Filtering: `WHERE`, `LIKE`, and `HAVING` clauses.
    * Multi-table Analysis: Implementing `INNER JOIN` and `LEFT JOIN` to combine data across tables.
    * Sorting and Limiting: Using `ORDER BY`, `DESC/ASC`, and `LIMIT`.

---

## Database Schema
The database consists of three primary entities:
1. **Employees:** Stores personal details, designations, salaries, and links to departments and locations.
2. **Departments_info:** Categorizes employees into functional groups like Finance, Data Analytics, and Development.
3. **Locations:** Tracks the geographical distribution of staff across cities like Chennai, Coimbatore, and Mumbai.

---

## SQL Scripts Description

### Assignment 1: Table Definition & Transformation
* Handles the initial setup of the `Employee` database.
* Demonstrates structural changes using `ALTER TABLE` to add/drop columns and rename tables.
* Establishes relationships between tables using Foreign Keys.
* Implements data validation rules such as `ENUM` for gender and `DEFAULT` timestamps for hire dates.

### Assignment 2: Data Operations & Analytics
* Populates the database with synthetic employee records.
* **Analysis Tasks Performed:**
    * Calculating total salary expenditures by designation.
    * Finding the minimum age and average age of employees by gender and location.
    * Identifying departments with low employee counts using the `HAVING` clause.
    * Generating reports showing employee names alongside their specific department and location details via Joins.

---

## Tools & Environment
* **Database System:** MySQL / MariaDB
* **Language:** SQL (Structured Query Language)

---

## Author
**Amudha. N** Batch: TN-DA-ANB11  
Project Domain: Data Analytics / SQL Development
