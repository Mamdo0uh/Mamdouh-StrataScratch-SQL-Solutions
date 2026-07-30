select department
from employee
group by department
having count(id) >= 5
