-- Create and select database
CREATE DATABASE IndexExerciseDB;
USE IndexExerciseDB;


-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Region VARCHAR(50)
);


-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);


-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);


-- Order Details Table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



-- Insert Customers
INSERT INTO Customers VALUES
(1,'Alice','North'),
(2,'Bob','South'),
(3,'Charlie','East'),
(4,'David','West');


-- Insert Products
INSERT INTO Products VALUES
(1,'Laptop','Electronics',1200.00),
(2,'Smartphone','Electronics',800.00),
(3,'Tablet','Electronics',600.00),
(4,'Headphones','Accessories',150.00);


-- Insert Orders
INSERT INTO Orders VALUES
(1,1,'2023-01-15'),
(2,2,'2023-02-20'),
(3,3,'2023-03-25'),
(4,4,'2023-04-30');


-- Insert Order Details
INSERT INTO OrderDetails VALUES
(1,1,1,1),
(2,2,2,2),
(3,3,3,1),
(4,4,4,3);



-- ===============================
-- Exercise 1: Non Clustered Index
-- ===============================

-- Before Index
SELECT * 
FROM Products 
WHERE ProductName='Laptop';


-- Create Index
CREATE INDEX idx_ProductName
ON Products(ProductName);


-- After Index
SELECT * 
FROM Products 
WHERE ProductName='Laptop';



-- ===============================
-- Exercise 2: Clustered Index
-- ===============================

-- Before Index
SELECT *
FROM Orders
WHERE OrderDate='2023-01-15';


-- MySQL does not support separate CLUSTERED INDEX syntax
-- Primary Key is clustered by default in InnoDB

-- Create normal index on OrderDate
CREATE INDEX idx_OrderDate
ON Orders(OrderDate);


-- After Index
SELECT *
FROM Orders
WHERE OrderDate='2023-01-15';



-- ===============================
-- Exercise 3: Composite Index
-- ===============================

-- Before Index
SELECT *
FROM Orders
WHERE CustomerID=1 
AND OrderDate='2023-01-15';


-- Create Composite Index
CREATE INDEX idx_Customer_OrderDate
ON Orders(CustomerID, OrderDate);


-- After Index
SELECT *
FROM Orders
WHERE CustomerID=1
AND OrderDate='2023-01-15';
