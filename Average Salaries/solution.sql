select department,first_name,salary, case when department ='Audit' then 950 
when  department ='Management' then 175000 when  department ='Sales' then 1336
else 'none' end as avg_salary 
from employee

