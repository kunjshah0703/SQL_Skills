-- Rolling Calculations SUM, AVG, MIN, MAX

WITH year_month_sales AS(
SELECT datepart(year, Order_date) AS year_order
, datepart(month, Order_date) AS month_order
, SUM(Sales) AS sales
FROM cust_orders
GROUP BY datepart(year, Order_date), datepart(month, Order_date)
)
SELECT *
, SUM(Sales) OVER(ORDER BY year_order ASC, month_order ASC rows between 2 preceding and 0 preceding)
AS rolling_3_sum -- For e.g here 2 preceding means suppose april is there 2018 so feb and march
-- are 2 preceding and april is 0 preceding
,  AVG(Sales) OVER(ORDER BY year_order ASC, month_order ASC rows between 2 preceding and 1 following)
AS rolling_avg
, MIN(Sales) OVER(ORDER BY year_order ASC, month_order ASC rows between 1 preceding and 1 following)
AS rolling_min
, MAX(Sales) OVER(ORDER BY year_order ASC, month_order ASC rows between 2 preceding and 0 preceding)
AS rolling_max
FROM year_month_sales;