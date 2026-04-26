create database superstore;

use superstore;

CREATE TABLE sales (
OrderID INT PRIMARY KEY,
Date DATE,
CustomerID VARCHAR(10),
Region VARCHAR(10),
ProductName VARCHAR(50),
Category VARCHAR(30),
Quantity INT,
UnitPrice DECIMAL(10,2),
TotalAmount DECIMAL(12,2),
OrderStatus VARCHAR(15),
SalesAgent VARCHAR(20)
);

show tables;

select * from sales;

SELECT 
YEAR(Date) AS Year,
MONTH(Date) AS Month,
SUM(TotalAmount) AS TotalSales
FROM sales
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

SELECT Region,
COUNT(*) AS TotalOrders,
SUM(CASE WHEN OrderStatus = 'Cancelled' THEN 1 ELSE 0 END) AS CancelledOrders,
SUM(CASE WHEN OrderStatus = 'Returned' THEN 1 ELSE 0 END) AS ReturnedOrders,
ROUND(SUM(CASE WHEN OrderStatus = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Cancel_Percentage,
ROUND(SUM(CASE WHEN OrderStatus = 'Returned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Return_Percentage
FROM sales
GROUP BY Region;

SELECT Region,
SUM(TotalAmount) AS RevenueLoss
FROM sales
WHERE OrderStatus IN ('Cancelled', 'Returned')
GROUP BY Region
ORDER BY RevenueLoss DESC
LIMIT 3;

SELECT ProductName,
SUM(TotalAmount) AS RevenueLoss
FROM sales
WHERE OrderStatus IN ('Cancelled', 'Returned')
GROUP BY ProductName
ORDER BY RevenueLoss DESC
LIMIT 3;

SELECT Category,
ROUND(AVG(TotalAmount), 2) AS AvgOrderValue
FROM sales
GROUP BY Category;

SELECT SalesAgent,
SUM(TotalAmount) AS TotalRevenue
FROM sales
WHERE OrderStatus = 'Completed'
GROUP BY SalesAgent
ORDER BY TotalRevenue DESC
LIMIT 5;

SELECT Category,
SUM(TotalAmount) AS TotalSales,
ROUND(SUM(TotalAmount) * 100.0 / (SELECT SUM(TotalAmount) FROM sales),2) AS Contribution_Percentage
FROM sales
GROUP BY Category
ORDER BY TotalSales DESC;

SELECT CustomerID,
COUNT(*) AS ReturnCount
FROM sales
WHERE OrderStatus = 'Returned'
GROUP BY CustomerID
HAVING COUNT(*) >= 3
ORDER BY ReturnCount DESC;


