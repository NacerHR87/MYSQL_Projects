-- Compound join conditions

SELECT *
FROM order_items oi
JOIN order_item_notes oin
    ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id 
    
    --
    SELECT *
    FROM orders o
    JOIN customers c
       ON o.customers_id = c.customers_id
              =
 -- implicit join syntax
 SELECT *
 FROM orders o, customers c
 WHERE o.customer_id = c.customer_id
       
-- outer join 
--left join
SELECT 
     c.customer_id,
     c.first_name,
     o.order_id
FROM customers c
LEFT JOIN  orders o
    ON c.customer_id = o.customer_id      
 ORDER BY c.customer_id   
 
 -- right join
 SELECT 
     c.customer_id,
     c.first_name,
     o.order_id
FROM customers c
RIGHT JOIN  orders o
    ON c.customer_id = o.customer_id      
 ORDER BY c.customer_id   
 
 -- invert tables 
  SELECT 
     c.customer_id,
     c.first_name,
     o.order_id
FROM orders o
RIGHT JOIN  customers c
    ON c.customer_id = o.customer_id      
 ORDER BY c.customer_id   
 
SELECT 
     c.customer_id,
     c.first_name,
     o.order_id,
     sh.name AS shipper
FROM customers c
LEFT JOIN  orders o
    ON c.customer_id = o.customer_id  
LEFT JOIN shippers sh
	ON o.shipper_id= sh.shipper_id
	ORDER BY c.customer_id    
 
 --exercise
SELECT 
      o.order_id,
      o.order_date,
      c.first_name AS customer,
      sh.name AS shipper,
      os.name AS status
FROM orders o 
JOIN customers c
	  ON  o.customer_id = c.customer_id
LEFT JOIN  shippers sh
      ON o.shipper_id = sh.shipper_id       
LEFT JOIN  order_statuses os
     ON o.status = os.order_status_id
     
     --SELF OUTER JOINS
     USE sql_hr;
     
     SELECT
        e.employee_id,
        e.first_name,
        m.first_name AS manager
	 FROM employees e
	 LEFT JOIN employees m
         ON e.reports_to = m.employee_id
         
 -- The using clause
  -- ON o.customer_id = c.customer_id 
	-- same column = USING (customer)
    
SELECT
      o.order_id,
      c.first_name,
      sh.name AS shipper
 FROM orders o
 JOIN customers c
	USING (customer_id)
LEFT JOIN shippers sh
     USING (shipper_id)
     
 -- Multiple columns in our join condition 
 SELECT *
 FROM order_items oi
 JOIN order_item_notes oin
    -- ON oi.order_id = oin.order_id AND
       -- oi.product_id = oin product _id
       -- we replace join conditions which is too long by USING statement
USING (order_id,product_id)

USE sql_invoicing;
SELECT
   p.date,
   c.name AS client,
   p.amount,
   pm.name AS payment_method 
FROM payments p
JOIN  clients c USING (client_id)
JOIN payment_methods pm
    ON p.payment_method = pm.payment_method_id  
    
-- natural joins
SELECT
  o.order_id,
  c.first_name
FROM orders o
NATURAL JOIN customers c    
