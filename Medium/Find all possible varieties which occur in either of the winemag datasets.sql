select distinct  variety
from winemag_p1
union
select distinct  variety
from winemag_p2
order by  variety asc 
