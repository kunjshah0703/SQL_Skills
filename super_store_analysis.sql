SELECT DISTINCT *
FROM ['clean_superstore_analysis(1)$'];

-- Question 1 : What percentage of total orders were shipped on the same date?
SELECT COUNT(Row_ID) AS number_of_orders_shipped_on_that_day, Ship_Date,
(1.0*COUNT(Row_ID)/8105) * 100 AS percentage_of_orders_shipped_on_same_day
FROM ['clean_superstore_analysis(1)$']
GROUP BY Ship_Date;

-- Question 2 : Name top 3 customers with highest total value of orders.
SELECT TOP (10) *
FROM [SQLPractise].[dbo].['clean_superstore_analysis(1)$'];

WITH cte
AS
(
SELECT Customer_Name,Product_Name, SUM(Sales) AS total_sales, 
RANK() OVER(ORDER BY SUM(Sales) DESC) AS rnk
FROM ['clean_superstore_analysis(1)$']
GROUP BY Customer_Name, Product_Name
--ORDER BY SUM(Sales) DESC
)
SELECT * FROM cte WHERE rnk < 4;

-- Question 3 : Find the top 5 items with the highest average sales per day.
SELECT TOP (10) *
FROM [SQLPractise].[dbo].['clean_superstore_analysis(1)$'];

WITH cte1
AS
(
SELECT Order_Date,Product_Name, ROUND(AVG(Sales),2) AS average_sales_per_day,
RANK() OVER(ORDER BY ROUND(AVG(Sales),2) DESC) AS rnk
FROM ['clean_superstore_analysis(1)$']
GROUP BY Order_Date, Product_Name
)
SELECT * FROM cte1 WHERE rnk < 6;

/*Question 4 : Write a query to find the average order value for each customer, and rank the 
customers by their average order value.*/

SELECT TOP (10) *
FROM [SQLPractise].[dbo].['clean_superstore_analysis(1)$'];

SELECT Customer_Name,AVG(Sales),
RANK() OVER(ORDER BY AVG(Sales) DESC) AS rnk
FROM ['clean_superstore_analysis(1)$']
GROUP BY Customer_Name;

-- Question 5 : Give the name of customers who ordered highest and lowest orders from each city
SELECT TOP (10) *
FROM [SQLPractise].[dbo].['clean_superstore_analysis(1)$'];

WITH min_sale
AS(
SELECT Customer_Name, City, MIN(Sales) AS most_min_sale,
RANK() OVER(ORDER BY MIN(Sales)) AS rnk
FROM ['clean_superstore_analysis(1)$']
GROUP BY Customer_Name, City
),
max_sale
AS
(
SELECT Customer_Name, City, MAX(Sales) AS most_max_sale,
RANK() OVER(ORDER BY MAX(Sales) DESC) AS rnk_1
FROM ['clean_superstore_analysis(1)$']
GROUP BY Customer_Name, City
)
SELECT m.Customer_Name, m.City, m1.Customer_Name, m1.City
FROM min_sale AS m
INNER JOIN max_sale AS m1
ON m.Customer_Name = m.Customer_Name
WHERE rnk = 1 AND rnk_1 = 1

-- Question 6 : What is the most demanded sub-category in the west region?
SELECT TOP (10) *
FROM [SQLPractise].[dbo].['clean_superstore_analysis(1)$'];

WITH total_count
AS
(
SELECT Sub_Category,COUNT(1) AS total, Region,
RANK() OVER(ORDER BY COUNT(1) DESC) AS rnk
FROM ['clean_superstore_analysis(1)$']
WHERE Region = 'West'
GROUP BY Sub_Category,Region
)
SELECT * FROM total_count WHERE rnk = 1
-- ORDER BY COUNT(1) DESC

/*
Question 7 : Which order has the highest number of items? And which order has the highest 
cumulative value?*/

SELECT TOP (10) *
FROM [SQLPractise].[dbo].['clean_superstore_analysis(1)$'];

WITH high_items
AS
(
SELECT Order_ID, COUNT(1) AS total_orders_for_that_order,
RANK() OVER(ORDER BY COUNT(1) DESC) AS rnk
FROM ['clean_superstore_analysis(1)$']
GROUP BY Order_ID
),
cum_value
AS
(
SELECT Order_ID, COUNT(Sales) AS sales_per_order,
SUM(COUNT(*)) OVER(ORDER BY Order_ID) AS cum_sales
-- RANK() OVER(ORDER BY Order_ID,SUM(COUNT(*)) DESC) AS rnk_1
FROM ['clean_superstore_analysis(1)$']
GROUP BY Order_ID
)
SELECT * FROM high_items WHERE rnk = 1
