with cte1 as (
select name,review_count,rank() over (order by review_count desc) as RN
from yelp_business
)
select name,sum(review_count) as review_count
from cte1
where RN <= 5
group by name
order by sum(review_count) desc
