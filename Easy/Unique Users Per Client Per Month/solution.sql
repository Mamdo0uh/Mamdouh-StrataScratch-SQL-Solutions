select client_id,MONTH(time_id) AS MONTH,COUNT(DISTINCT user_id) AS users_num
from fact_events
GROUP BY client_id,MONTH(time_id)
