USE pizza_db;
SELECT * FROM pizza_sales
LIMIT 10;

SELECT COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales;

SELECT SUM(total_price) AS total_sales FROM pizza_sales;

SELECT pizza_name,
SUM(quantity) AS total_sold FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_sold DESC
LIMIT 5;

SELECT pizza_category,
ROUND(SUM(total_price),2) AS revenue
FROM pizza_sales
GROUP BY pizza_category
ORDER BY revenue DESC;

SELECT pizza_size,
SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_size
ORDER BY total_quantity;

SELECT order_date,
ROUND(SUM(total_price),2) AS daily_revenue
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;

SELECT HOUR(order_time) AS order_hour,
COUNT(order_id) AS total_orders
FROM pizza_sales
GROUP BY order_hour
ORDER BY total_orders DESC;

SELECT 
ROUND(SUM(total_price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM pizza_sales;






