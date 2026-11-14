-- Write your query below
-- select customer_id, customer_name
-- from customers c
-- where exists (
--     select 1 from orders o
--     where o.product_name = 'A' and o.customer_id = c.customer_id)
-- and exists (
--     select 1 from orders o
--     where o.product_name = 'B' and o.customer_id = c.customer_id)
-- and not exists (
--     select 1 from orders o
--     where o.product_name = 'C' and o.customer_id = c.customer_id)
-- order by customer_name


select c.customer_id, c.customer_name
from customers c join orders o on c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
having  sum(case when o.product_name = 'A' then 1 else 0 end) > 0
    and sum(case when o.product_name = 'B' then 1 else 0 end) > 0
    and sum(case when o.product_name = 'C' then 1 else 0 end) = 0
order by c.customer_name
