CREATE DATABASE olist_db;

USE olist_db;
SELECT * FROM customers;
SELECT * FROM items;
SELECT * FROM orders;
SELECT * FROM products limit 5;

-- Q.01 find month-on-month total unique deliverd orders and total revenue to analyze business grouth trends.

SELECT 
	DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS order_month,
	COUNT(DISTINCT O.order_id)AS Total_orders,
    ROUND(SUM(oi.price + oi.freight_value),2)AS total_revenue
FROM orders o 
JOIN items oi ON o.order_id=oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY order_month
ORDER BY order_month;    

-- Q.02 find the top 5 states that generate the highest revenue and bring in the most orders for the business.

SELECT 
	c.customer_state AS state,
    COUNT(DISTINCT o.order_id)AS Total_orders,
    ROUND(SUM(oi.price + oi.freight_value),2)AS total_revenue
FROM orders o 
JOIN items oi ON o.order_id = oi.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status ='delivered'
GROUP BY state
ORDER BY total_revenue DESC LIMIT 5; 

-- Q.03 identify the top 5 product categories that generated the highest revenue and total items sold. 

SELECT 
	p.product_category_name AS category_name,
    COUNT(oi.product_id) AS total_items_sold,
    ROUND(SUM(oi.price),2) AS total_revenue
FROM items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY category_name   
ORDER BY total_revenue DESC
LIMIT 5;

-- Q.04 find the top 5 product categories that have the highest number of canceled or unavailable orders. 

SELECT 
	p.product_category_name AS category_name,
    COUNT(o.order_id) AS total_canceled_orders
FROM orders o 
JOIN items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE o.order_status IN ('canceled','unavailable')    
GROUP BY category_name
ORDER BY total_canceled_orders DESC
LIMIT 5;

-- Q.05 calculate the average order value for each customer state. 
SELECT 
	c.customer_state AS state,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(SUM(oi.price+ oi.freight_value),2) AS total_revenue,
    ROUND(SUM(oi.price + oi.freight_value)/COUNT(DISTINCT o.order_id),2) AS average_order_value
FROM orders o 
JOIN items oi ON o.order_id = oi.order_id
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered' 
GROUP BY state
ORDER BY average_order_value DESC;   

-- Q.06 Average delivery time by state

SELECT 
	c.customer_state AS state,
    AVG(DATEDIFF(o.order_delivered_customer_date,
    o.order_purchase_timestamp))AS avg_delivery_days
FROM orders o 
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY state
ORDER BY avg_delivery_days DESC;  

