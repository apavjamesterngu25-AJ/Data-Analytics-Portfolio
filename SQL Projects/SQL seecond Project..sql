
1)  Customer Segmentation by Region
-- Identify Top 10 State by Unique Customer Count

SELECT TOP (10)
State,
COUNT(DISTINCT [Customer ID]) AS Unique_Customers,
ROUND(COUNT(DISTINCT [Customer ID]) * 100.0 / (SELECT COUNT(DISTINCT [Customer ID]) FROM Orders$), 2) AS Percentage_Reach
FROM Orders$
GROUP BY [State]
ORDER BY Unique_Customers DESC;


2)  Customer Retention and Repeat Purchases
-- Part A: count of Repeat Customers

SELECT COUNT(*) AS Repeat_Customer_Count
FROM(
SELECT [Customer ID]
FROM Orders$
GROUP BY [Customer ID]
HAVING COUNT([Order ID]) > 1
)AS Repeat_Table;

--Part B:Top 5 Customers by Order Volume
SELECT TOP (5)
[Customer ID],
COUNT([Order ID]) AS Total_Orders
FROM Orders$
GROUP BY [Customer ID]
ORDER BY Total_Orders DESC;


3 High-Value Customers 
--Customer that drive the most revenue
SELECT 
[Customer ID],
SUM(Sales) AS Total_Spent,
AVG(Sales) AS Avg_order_Value,
--Finding the most frequent category for these users
(SELECT TOP 1 Category 
FROM Orders$ O2 
WHERE O2.[Customer ID] = o1.[Customer ID]
GROUP BY Category 
ORDER BY COUNT(*) DESC) AS Favorite_Category
FROM Orders$ O1
GROUP BY [Customer ID]
ORDER BY Total_Spent DESC;


4 Customer Purchase Frequency
--Buying cycle of different business segments.

SELECT
Segment,
COUNT([Order ID]) * 1.0/ COUNT(DISTINCT [Customer ID]) AS AVg__Purchases_customer
FROM Orders$ 
GROUP BY Segment;


5 Monthy Purchase Trends
--Identifies which is vital for inventory planning.

SELECT
DATETRUNC(MONTH, [Order Date]) AS Sales_Month,
COUNT([Order ID]) AS Total_Order,
SUM(Sales) AS monthly_Revenue
FROM Orders$
GROUP BY DATETRUNC(MONTH,[Order Date])
ORDER BY monthly_Revenue DESC;





