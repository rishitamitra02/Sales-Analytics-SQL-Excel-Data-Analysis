# Sales-Analytics-SQL-Excel-Data-Analysis
Sales Analytics project using SQL and Excel to analyze sales performance, customer behavior, product trends, revenue, and key business insights. Includes SQL queries, Excel analysis, XLOOKUP, Pivot Tables, and data-driven visualizations.
# Sales Analytics – SQL & Excel Data Analysis

## Project Overview

This project was completed as part of a Data Analytics assignment to demonstrate practical skills in SQL and Microsoft Excel.

The project focuses on analyzing a Sales Analytics dataset and performing data manipulation, analysis, and visualization using SQL and Excel.

## Objectives

The main objectives of this project are:

- To create and manage a relational database using MySQL.
- To retrieve and filter data using SQL queries.
- To perform aggregate calculations using SQL.
- To use GROUP BY and HAVING clauses.
- To combine tables using different types of SQL JOINs.
- To solve analytical problems using SQL subqueries.
- To format, sort, and filter data using Excel.
- To apply Conditional Formatting.
- To use IF, COUNTIF, and SUMIF functions.
- To demonstrate VLOOKUP and XLOOKUP.
- To create Pivot Tables and Charts for data analysis.

## Dataset Description

For this assignment, a Sales Analytics database was created.

The database contains information related to customers, products, employees, and sales transactions.

### Customers

| Column | Description |
|---|---|
| Customer_ID | Unique identification number of the customer |
| Customer_Name | Name of the customer |
| City | Customer's city |
| State | Customer's state |
| Age | Age of the customer |

### Products

| Column | Description |
|---|---|
| Product_ID | Unique product identification number |
| Product_Name | Name of the product |
| Category | Product category |
| Price | Product price |

### Employees

| Column | Description |
|---|---|
| Employee_ID | Unique employee identification number |
| Employee_Name | Name of the employee |
| Department | Employee department |
| Salary | Employee salary |

### Sales

| Column | Description |
|---|---|
| Sale_ID | Unique sales transaction ID |
| Employee_ID | Employee associated with the transaction |
| Product_Name | Product associated with the transaction |
| Sale_Amount | Total value of the sales transaction |

## Tools Used

- MySQL
- MySQL Workbench
- Microsoft Excel
- Google Sheets
- GitHub

## SQL Analysis

The following SQL concepts were implemented:

### 1. Database and SELECT Queries

- Database creation
- Table creation
- Data insertion
- SELECT queries
- Selecting specific columns

### 2. Filtering, Sorting and Aggregate Functions

- WHERE
- ORDER BY
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

### 3. GROUP BY and HAVING

- GROUP BY with COUNT()
- GROUP BY with SUM()
- HAVING for filtering grouped results

### 4. SQL JOINs

The following JOINs were demonstrated:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN

The Employees and Sales tables were connected using Employee_ID.

### 5. SQL Subqueries

Two subquery problems were solved:

- Finding employees earning more than the average salary.
- Finding products with a price higher than the average product price.

## Excel Analysis

The following Excel concepts were demonstrated:

### Task 6 – Formatting, Sorting and Filtering

- Data formatting
- Header formatting
- Sorting Total Amount from largest to smallest
- Filtering records by Department

### Task 7 – Conditional Formatting and Functions

- Conditional Formatting
- IF()
- COUNTIF()
- SUMIF()

### Task 8 – Lookup Functions

- VLOOKUP()
- XLOOKUP()

VLOOKUP was used to retrieve the Manager using Employee_ID.

XLOOKUP was used to search for Employee_ID and return the corresponding Manager.

### Task 9 – Pivot Table and Chart

A Pivot Table was created using:

- Rows → Department
- Values → Sum of Total Amount

A column chart was created based on the Pivot Table to compare total sales revenue across departments.

## Key Learning Outcomes

Through this project, I gained practical experience in:

- Relational database management
- SQL querying
- Data filtering and aggregation
- SQL JOIN operations
- SQL subqueries
- Excel data cleaning and formatting
- Excel functions
- Lookup functions
- Pivot Table analysis
- Data visualization

## Conclusion

This project provided practical exposure to SQL and Excel for business data analysis. The Sales Analytics dataset was used to perform various analytical operations and demonstrate how structured data can be transformed into meaningful business insights.

The project strengthened my understanding of SQL queries, relational database concepts, Excel functions, lookup operations, Pivot Tables, and data visualization.

## Author

**Rishita Mitra**

MBA – Business Analytics
