-- Write your query below
select name
from sales_person p
where not exists(
    select 1 from orders o
            join company c on c.com_id = o.com_id
    where c.name ='CRIMSON' and o.sales_id = p.sales_id
)