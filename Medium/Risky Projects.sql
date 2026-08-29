select p.title,avg(p.budget) as budget,CEILING(SUM(e.salary * 1.0 ) / 365.0* DATEDIFF(day, p.start_date, p.end_date)) as prorated_employee_expense
from linkedin_projects p join linkedin_emp_projects b
on(p.id = b.project_id )
join linkedin_employees e
on(b.emp_id = e.id)
group by p.title,p.budget,p.start_date,p.end_date
having SUM(e.salary * 1.0) / 365.0 * DATEDIFF(day, p.start_date, p.end_date) > avg(p.budget)
