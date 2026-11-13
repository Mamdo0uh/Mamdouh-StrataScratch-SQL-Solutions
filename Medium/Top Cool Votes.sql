with cte1 as (
select business_name,review_text,row_number() over (order by cool desc) as RN
from yelp_reviews 
)
select business_name,review_text
from cte1
where RN <=2
