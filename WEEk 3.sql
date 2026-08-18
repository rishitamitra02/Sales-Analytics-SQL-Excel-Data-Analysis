CREATE DATABASE Sales_Analytics;
USE Sales_Analytics;
CREATE TABLE Customers (
    Customer_ID INT,
    Customer_Name VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Age INT
);
DESCRIBE Customers;
SELECT * FROM Customers;
SELECT Customer_Name, City
FROM Customers;
SELECT
    Customer_ID AS ID,
    Customer_Name AS Name,
    City AS Location
FROM Customers;
INSERT INTO Customers
(Customer_ID, Customer_Name, City, State, Age)
VALUES
(101, 'Aarav Sharma', 'Pune', 'Maharashtra', 24),
(102, 'Priya Patel', 'Mumbai', 'Maharashtra', 29),
(103, 'Rohan Das', 'Kolkata', 'West Bengal', 26),
(104, 'Sneha Gupta', 'Delhi', 'Delhi', 31),
(105, 'Aditya Mehta', 'Bangalore', 'Karnataka', 27),
(106, 'Neha Singh', 'Pune', 'Maharashtra', 23),
(107, 'Rahul Roy', 'Kolkata', 'West Bengal', 35),
(108, 'Ananya Sen', 'Delhi', 'Delhi', 28),
(109, 'Vikram Joshi', 'Mumbai', 'Maharashtra', 32),
(110, 'Isha Kapoor', 'Bangalore', 'Karnataka', 25);
SELECT * FROM Customers;
INSERT INTO Customers
(Customer_ID, Customer_Name, City, State, Age)
VALUES
(102, 'Priya Patel', 'Mumbai', 'Maharashtra', 29),
(103, 'Rohan Das', 'Kolkata', 'West Bengal', 26),
(104, 'Sneha Gupta', 'Delhi', 'Delhi', 31),
(105, 'Aditya Mehta', 'Bangalore', 'Karnataka', 27),
(106, 'Neha Singh', 'Pune', 'Maharashtra', 23),
(107, 'Rahul Roy', 'Kolkata', 'West Bengal', 35),
(108, 'Ananya Sen', 'Delhi', 'Delhi', 28),
(109, 'Vikram Joshi', 'Mumbai', 'Maharashtra', 32),
(110, 'Isha Kapoor', 'Bangalore', 'Karnataka', 25);
SELECT * FROM Customers;
SELECT Customer_Name, City
FROM Customers;
SELECT
    Customer_ID AS ID,
    Customer_Name AS Name,
    City AS Location
FROM Customers;
SELECT *
FROM Customers
WHERE City = 'Pune';
SELECT Customer_ID, Customer_Name, Age
FROM Customers
WHERE Age > 28;
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
INSERT INTO Products
(Product_ID, Product_Name, Category, Price)
VALUES
(201, 'Laptop', 'Electronics', 55000),
(202, 'Smartphone', 'Electronics', 30000),
(203, 'Headphones', 'Electronics', 2500),
(204, 'Office Chair', 'Furniture', 8500),
(205, 'Desk', 'Furniture', 12000),
(206, 'Keyboard', 'Accessories', 1800),
(207, 'Mouse', 'Accessories', 900),
(208, 'Monitor', 'Electronics', 15000),
(209, 'Printer', 'Electronics', 12000),
(210, 'Backpack', 'Accessories', 2200);
SELECT Product_Name, Price
FROM Products
ORDER BY Price ASC;
SELECT Product_Name, Price
FROM Products
ORDER BY Price DESC;
SELECT COUNT(*) AS Total_Products
FROM Products;
SELECT SUM(Price) AS Total_Product_Value
FROM Products;
SELECT AVG(Price) AS Average_Price
FROM Products;
SELECT MAX(Price) AS Maximum_Price
FROM Products;
SELECT MAX(Price) AS Maximum_Price
FROM Products;
SELECT
    COUNT(*) AS Total_Products,
    SUM(Price) AS Total_Product_Value,
    AVG(Price) AS Average_Price,
    MIN(Price) AS Minimum_Price,
    MAX(Price) AS Maximum_Price
FROM Products;
SELECT
    Category,
    COUNT(*) AS Number_of_Products
FROM Products
GROUP BY Category;
SELECT
    Category,
    SUM(Price) AS Total_Category_Value
FROM Products
GROUP BY Category;
SELECT
    Category,
    SUM(Price) AS Total_Category_Value
FROM Products
GROUP BY Category
HAVING SUM(Price) > 20000;
CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);
INSERT INTO Employees
(Employee_ID, Employee_Name, Department, Salary)
VALUES
(501, 'Rahul Mehta', 'Sales', 45000),
(502, 'Priya Shah', 'Sales', 50000),
(503, 'Amit Kumar', 'Marketing', 42000),
(504, 'Sneha Rao', 'Finance', 55000),
(505, 'Karan Patel', 'Sales', 48000);
CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY,
    Employee_ID INT,
    Product_Name VARCHAR(100),
    Sale_Amount DECIMAL(10,2)
);
INSERT INTO Sales
(Sale_ID, Employee_ID, Product_Name, Sale_Amount)
VALUES
(1, 501, 'Laptop', 55000),
(2, 502, 'Smartphone', 30000),
(3, 501, 'Headphones', 2500),
(4, 503, 'Office Chair', 8500),
(5, 504, 'Desk', 12000),
(6, 502, 'Monitor', 15000),
(7, 505, 'Keyboard', 1800),
(8, 501, 'Mouse', 900),
(9, 503, 'Printer', 12000),
(10, 505, 'Backpack', 2200);
SELECT
    Employees.Employee_ID,
    Employees.Employee_Name,
    Employees.Department,
    Sales.Product_Name,
    Sales.Sale_Amount
FROM Employees
INNER JOIN Sales
ON Employees.Employee_ID = Sales.Employee_ID;
SELECT
    Employees.Employee_ID,
    Employees.Employee_Name,
    Employees.Department,
    Sales.Product_Name,
    Sales.Sale_Amount
FROM Employees
LEFT JOIN Sales
ON Employees.Employee_ID = Sales.Employee_ID;
SELECT
    Employees.Employee_ID,
    Employees.Employee_Name,
    Employees.Department,
    Sales.Product_Name,
    Sales.Sale_Amount
FROM Employees
RIGHT JOIN Sales
ON Employees.Employee_ID = Sales.Employee_ID;
SELECT
    Employees.Employee_ID,
    Employees.Employee_Name,
    Employees.Department,
    Sales.Product_Name,
    Sales.Sale_Amount
FROM Employees
RIGHT JOIN Sales
ON Employees.Employee_ID = Sales.Employee_ID;
USE Sales_Analytics;
SELECT
    Employees.Employee_ID,
    Employees.Employee_Name,
    Employees.Department,
    Sales.Product_Name,
    Sales.Sale_Amount
FROM Employees
RIGHT JOIN Sales
ON Employees.Employee_ID = Sales.Employee_ID;
SELECT AVG(Salary)
FROM Employees;
SELECT AVG(Salary) AS Average_Salary
FROM Employees;
SELECT
    Employee_ID,
    Employee_Name,
    Department,
    Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees
);
SELECT
    Product_ID,
    Product_Name,
    Price
FROM Products
WHERE Price > (
    SELECT AVG(Price)
    FROM Products
);