select e.employee_title,e.sex,sum(e.salary + b.total) / count(e.id) as avg_compensation
from sf_employee e join (
select worker_ref_id, sum(bonus) as total
from sf_bonus
group by worker_ref_id
) b
on (e.id = b.worker_ref_id)
group by e.employee_title, e.sex
