select type as TYPE,sum(case when processed = 'TRUE' then 1 else 0 end)*1.00/count(complaint_id)as processed_rate
from facebook_complaints
group by type
