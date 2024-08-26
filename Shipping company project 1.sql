SELECT*
FROM customers
ORDER BY first_name DESC

SELECT first_name ,last_name
FROM customers
ORDER BY birth_date ASC

SELECT first_name,last_name,10 AS points
FROM customers
ORDER BY points,first_name

SELECT*,quantity*unit_price AS total_price
FROM order_items
WHERE order_id= 2 
ORDER BY total_price DESC


SELECT*
FROM customers
LIMIT 6,3  

SELECT*
FROM customers
ORDER BY points DESC
LIMIT 3 

SELECT *
FROM orders
JOIN customers 
    ON orders.customer_id = customers.customer_id 
    
    
    
SELECT order_id,first_name,last_name
FROM orders
JOIN customers 
    ON orders.customer_id = customers.customer_id 
    
SELECT order_id,orders.customer_id,first_name,last_name
FROM orders
JOIN customers 
    ON orders.customer_id = customers.customer_id   
    
    
SELECT order_id,o.customer_id,first_name,last_name
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id     
    
SELECT order_id, oi.product_id, quantity, oi.unit_price
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id    
    
    -- join multiple tables
    USE sql_store;
    SELECT 
        o.order_id,
        o.order_date,
        c.first_name,
        c.last_name,
        os.name  AS Status
    FROM orders o 
    JOIN customers c 
        ON o.customer_id = c.customer_id
	JOIN order_statuses os
        ON o.status = os.order_status_id
        
      