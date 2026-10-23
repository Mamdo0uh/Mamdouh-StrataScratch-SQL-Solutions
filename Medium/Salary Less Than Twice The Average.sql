with cte1 as (
    select 
        m.manager_empl_id,
        e.salary as manager_salary
    from map_employee_hierarchy m 
    join dim_employee e on m.manager_empl_id = e.empl_id
    group by m.manager_empl_id, e.salary
),
cte2 as (
    select 
        m.manager_empl_id,
        avg(sub.salary) as avg_subordinate_salary
    from map_employee_hierarchy m 
    join dim_employee sub on m.empl_id = sub.empl_id
    group by m.manager_empl_id
)
select 
    ms.manager_empl_id,
    ms.manager_salary,
    sa.avg_subordinate_salary
from cte1 ms
join cte2 sa on ms.manager_empl_id = sa.manager_empl_id
where ms.manager_salary < 2 * sa.avg_subordinate_salary
