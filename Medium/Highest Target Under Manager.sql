select first_name,target
from ( select first_name,target,dense_rank() over (order by target desc) as DN
from salesforce_employees
where manager_id = 13 
) as newtable
where DN =1
order by target desc
