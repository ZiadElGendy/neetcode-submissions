-- Write your query below
SELECT name
FROM customers 
EXCEPT
SELECT customers.name
FROM customers INNER JOIN orders on customers.id = orders.customer_id
