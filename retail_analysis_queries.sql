-- SQL Retail Profitiability Analysis 

-- Create Table
DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
    order_id VARCHAR(20),
    order_date DATE,
    ship_date DATE,
    shipping_d INTEGER,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name TEXT,
    customer_segment VARCHAR(30),
    country_region VARCHAR(50),
    city VARCHAR(50),
    state_name VARCHAR(50),
    postal_code VARCHAR(15),
    region VARCHAR(30),
    product_id VARCHAR(30),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT,
    sales NUMERIC(10,2),
    quantity INTEGER,
    discount NUMERIC(5,2),
    profit NUMERIC(10,2),
    profit_margin NUMERIC(5,2)
);

SELECT * From orders
LIMIT 10

-- How Many Unique Customers we have?
SELECT COUNT(DISTINCT customer_id) as total_sale FROM orders

-- How Many Categories we have?
SELECT DISTINCT category FROM orders

-- Write a SQL query to calculate the sales (net_sale) for each category.

SELECT 
    category,
	ROUND(SUM(sales),2) as net_sale,
	COUNT(*) as order_id
FROM orders
GROUP BY category

-- Total Sales & Profit 

SELECT 
ROUND(SUM(sales),2) AS total_sales,
ROUND(SUM(profit),2) AS total_profit
FROM orders;

-- Top 5 Best-Selling Products

SELECT 
product_name,
ROUND(SUM(sales),2) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Lowest-Selling Products

SELECT 
product_name,
ROUND(SUM(sales),2) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales ASC
LIMIT 5;

-- Most Profitable Products

SELECT 
product_name,
ROUND(SUM(profit),2) AS total_profit
FROM orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;

-- 5. Loss-Making Products

SELECT 
product_name,
ROUND(SUM(profit),2) AS total_loss
FROM orders
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_loss ASC;

-- Region Performance

SELECT 
region,
ROUND(SUM(sales),2) AS total_sales,
ROUND(SUM(profit),2) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_profit DESC;

-- Shipping Mode Analysis

SELECT 
ship_mode,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY ship_mode
ORDER BY total_orders DESC;

-- End