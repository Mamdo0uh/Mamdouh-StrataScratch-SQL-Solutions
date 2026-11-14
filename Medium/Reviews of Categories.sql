select value as category,sum(review_count) as review_cnt
from yelp_business
cross apply string_split(categories, ';')
group by value
order by review_cnt desc
