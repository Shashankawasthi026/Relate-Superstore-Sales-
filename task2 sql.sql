CREATE DATABASE SuperstoreDB;
USE SuperstoreDB;
ordersCREATE TABLE Orders (
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Customer_ID VARCHAR(50),
    Category VARCHAR(50),
    Sales DECIMAL(10,2),
    Quantity INT,
    Profit DECIMAL(10,2),
    Discount DECIMAL(5,2)
);
CREATE TABLE Customers (
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Region VARCHAR(50),
    Segment VARCHAR(50)
);

SELECT COUNT(*) FROM Customers;

SELECT * FROM Orders
LIMIT 10;

Select * from Customers
LIMIT 10;


SELECT
    o.Order_ID,
    o.Order_Date,
    c.Customer_Name,
    c.Region,
    c.Segment,
    o.Category,
    o.Sales,
    o.Profit
FROM Orders o
INNER JOIN Customers c
ON o.Customer_ID = c.Customer_ID;


SELECT
    c.Region,
    SUM(o.Sales) AS Total_Sales
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Region
ORDER BY Total_Sales DESC;

SELECT
    Category,
    ROUND(
        SUM(Profit)/SUM(Sales)*100,
        2
    ) AS Profit_Margin
FROM Orders
GROUP BY Category;


SELECT
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM Orders
GROUP BY MONTH(Order_Date)
ORDER BY Month;


SELECT
    c.Customer_Name,
    SUM(o.Sales) AS Revenue
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Revenue DESC
LIMIT 5;


SELECT
    c.Segment,
    SUM(o.Sales) AS Total_Sales
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Segment;