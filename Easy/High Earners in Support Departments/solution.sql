-- Title: High Earners in Support Departments
-- Platform: StrataScratch
-- URL: https://platform.stratascratch.com/coding/2167-high-earners-in-support-departments?code_type=5
select first_name,last_name, department,salary
from techcorp_workforce
where salary > 80000 and (department = 'HR' or  department = 'Admin')
