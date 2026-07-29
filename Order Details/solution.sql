select  first_name , order_date ,order_details,total_order_cost
from customers c join orders o
on(c.id = o.cust_id)
where c.first_name ='Jill' or c.first_name ='Eva' 
order by c.id asc
