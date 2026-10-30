select c.customer_id,c.customer_name
from online_store_customers c join online_store_orders o
on(c.customer_id=o.customer_id)
group by c.customer_id,c.customer_name
having max(amount)>100
