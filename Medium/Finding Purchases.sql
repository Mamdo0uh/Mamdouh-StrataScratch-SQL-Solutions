select distinct user_id
from (
select user_id,created_at ,lag(created_at) over (partition by user_id order by created_at asc)  as lg
from amazon_transactions
) as newtable
where datediff(day,lg,created_at) between 1 and 7
