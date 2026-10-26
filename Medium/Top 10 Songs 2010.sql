select year_rank,group_name,song_name
from billboard_top_100_year_end
where year = 2010 and year_rank between 1 and 10
group by year_rank,group_name,song_name
order by year_rank

