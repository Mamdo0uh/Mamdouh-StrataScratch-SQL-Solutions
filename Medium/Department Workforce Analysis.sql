select department,sum (case when year(joining_date)>2020 then 1 else 0 end) as headcount ,sum(salary*1.00) as total_payroll,avg(salary*1.00) as avg_salary
from techcorp_workforce
where department in (select department
from techcorp_workforce
where year(joining_date)>=2020 
group by department
having count(id) >=5
) and year(joining_date)>2020
group by department
