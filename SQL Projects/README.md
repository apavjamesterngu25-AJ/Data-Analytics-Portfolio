# Customer Segmentation & Retention Analysis (SQL)

This folder contains end-to-end relational database design and exploratory data analysis scripts written in *Microsoft SQL Server (T-SQL)* using SQL Server Management Studio (SSMS).

## Project Overview
Understanding where customers are located and how often they return is critical for retail growth. In this project, I structured core relational e-commerce tables and wrote analytical SQL queries to uncover geographic customer concentration, repeat purchase behavior, and high-volume buyers.

## Files Included
* **SQL first project.sql (Database Design & Schema Setup):**
  * Created normalized Customers and Products tables using DDL (CREATE TABLE) with PRIMARY KEY, NOT NULL, VARCHAR, DECIMAL, and DATE constraints.
  * Populated customer records using DML (INSERT INTO) and system date functions (GETDATE()).
* **SQL second Project.sql (Customer Segmentation & Retention Analysis):**
  * *Regional Segmentation:* Identified the *Top 10 States* by unique customer count and calculated each state's percentage share of the total customer base.
  * *Customer Retention:* Used subqueries and HAVING COUNT(...) > 1 filters to isolate and count repeat purchasers across the Orders dataset.
  * *Top Customer Ranking:* Ranked the *Top 5 Customers* by total order volume to highlight key revenue contributors.

## SQL Techniques & Skills Demonstrated
* *Database Creation & Modeling:* CREATE TABLE, INSERT INTO, Data Types & Constraints
* *Data Aggregation:* COUNT(DISTINCT ...), ROUND(), TOP
* *Filtering & Grouping:* GROUP BY, HAVING, ORDER BY
* *Advanced Querying:* Nested Subqueries and Inline Views (FROM (...) AS Repeat_Table)

## Tools Used
* *Microsoft SQL Server*
* *SQL Server Management Studio (SSMS)*

## How to Run
1. Download the .sql script files from this repository.
2. Open *SQL Server Management Studio (SSMS)* and connect to your local SQL Server instance.
3. Open SQL first project.sql or SQL second Project.sql and click *Execute* (F5) to run the queries against your database.
