-- Total Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;

-- Profit by Category
SELECT category, SUM(profit) AS total_profit
FROM sales
GROUP BY category
ORDER BY total_profit DESC;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month,
SUM(sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;

-- Discount Impact on Profit
SELECT discount, AVG(profit) AS avg_profit
FROM sales
GROUP BY discount;