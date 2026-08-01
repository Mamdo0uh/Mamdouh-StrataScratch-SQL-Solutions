select count(worker_id) 
from worker
where joining_date >= '2014-04-01' and department = 'Admin'
