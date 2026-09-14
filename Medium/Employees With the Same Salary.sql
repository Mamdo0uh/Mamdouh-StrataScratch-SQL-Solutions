with salarycounts as (select worker_id,first_name,salary,count(*) over (partition by salary) as salary_count
from worker)
select worker_id,first_name,salary
from salarycounts
where salary_count > 1
order by salary, worker_id
