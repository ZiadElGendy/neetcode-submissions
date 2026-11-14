-- Write your query below
select customer_id, customer_name
from customers c
where exists (
    select 1 from orders o
    where o.product_name = 'A' and o.customer_id = c.customer_id)
and exists (
    select 1 from orders o
    where o.product_name = 'B' and o.customer_id = c.customer_id)
and not exists (
    select 1 from orders o
    where o.product_name = 'C' and o.customer_id = c.customer_id)
order by customer_name