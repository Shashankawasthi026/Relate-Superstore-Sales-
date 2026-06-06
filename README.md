# Relate-Superstore-Sales-
Advanced Data Analysis, SQL Joins &amp; Business KPI Dashboard

## Project Overview

This project demonstrates Data Analytics and Business Intelligence concepts using SQL, Excel, and Power BI.

The objective is to analyze sales performance, customer behavior, profitability, and business KPIs using relational datasets.

### Orders Table

* Order ID
* Order Date
* Customer ID
* Category
* Sales
* Quantity
* Profit
* Discount

### Customers Table

* Customer ID
* Customer Name
* Region
* Segment

## Technologies Used

* SQL (MySQL)
* Microsoft Excel
* Power BI
* Data Analysis

## SQL Operations Performed

### INNER JOIN

```sql
SELECT *
FROM Orders o
INNER JOIN Customers c
ON o.Customer_ID = c.Customer_ID;
```

### Sales by Region

```sql
SELECT
c.Region,
SUM(o.Sales) AS Total_Sales
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Region;
```

### Profit by Category

```sql
SELECT
Category,
SUM(Profit) AS Total_Profit
FROM Orders
GROUP BY Category;
```

### Monthly Sales Trend

```sql
SELECT
MONTH(Order_Date) AS Month,
SUM(Sales) AS Monthly_Sales
FROM Orders
GROUP BY MONTH(Order_Date);
```

### Top Customers

```sql
SELECT
c.Customer_Name,
SUM(o.Sales) AS Revenue
FROM Orders o
JOIN Customers c
ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Revenue DESC
LIMIT 5;
```

## Dashboard KPIs

* Total Sales
* Total Profit
* Profit Margin %
* Total Orders
* Total Customers
* Average Order Value (AOV)

## Dashboard Visualizations

* Sales by Region
* Profit by Category
* Monthly Sales Trend
* Segment Distribution
* Top Customers Analysis

## Key Insights

* Identified highest revenue generating regions.
* Analyzed category-wise profitability.
* Evaluated customer segment performance.
* Studied monthly sales trends.
* Generated business recommendations based on KPI analysis.

## Author

Shashank Awasthi
Data Analytics & Business Intelligence Project
