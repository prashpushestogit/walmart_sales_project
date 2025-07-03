USE walmart_db;
SELECT * FROM walmart;		
SELECT 
 payment_method ,
 COUNT(*)
 FROM walmart
 GROUP BY payment_method;
 
SELECT COUNT(DISTINCT Branch) From walmart;

#highest rating of each branch
SELECT 
Branch,
category,
AVG(rating) as avg_rating
FROM walmart
GROUP BY Branch, Category
ORDER BY avg_rating DESC;

#Busiest day in each branch

SELECT 
  Branch,
  DAYNAME(STR_TO_DATE(date, '%d/%m/%y')) AS day,
  COUNT(*) as total_transactions
FROM walmart
GROUP BY Branch,day
ORDER BY total_transactions DESC;

#Total quantity of items sold per payment method,list payment method and total quantity

SELECT 
payment_method,
SUM(quantity)
FROM walmart
GROUP BY payment_method;

#determine the average,maximum,minimum rating of product for each city. Also list them with city column

SELECT * FROM walmart;

SELECT
city,
MAX(rating),
MIN(rating),
AVG(rating)
FROM walmart
GROUP BY city;

#calculate Total Profit 
#Total Profit = unit_price * quantity * profit_margin
#list category and total profit

SELECT
 branch,
 category,
 (unit_price * quantity * profit_margin) as Total_Profit
FROM walmart
ORDER BY Total_Profit DESC; 

#Display most commom payment method for each branch

WITH cte
AS
(
SELECT
 branch,
 payment_method,
 COUNT(*),
 RANK() OVER (PARTITION BY branch ORDER BY COUNT(*) DESC) AS ranking
FROM walmart
GROUP BY branch,payment_method
) 
SELECT *
FROM cte
WHERE ranking = 1;

#Catergorize sales into three groups morning,evening,afternoon
#find out each of the shift and number of invoices

SELECT
CASE 
WHEN HOUR(STR_TO_DATE(time, '%H:%i:%s'))<12 THEN 'Morning'
WHEN HOUR(STR_TO_DATE(time, '%H:%i:%s'))<17 THEN 'Afternoon'
ELSE 'Evening'
END AS time_label,
COUNT(*)
FROM walmart
GROUP BY time_label;