select distinct p.post_id,p.poster,p.post_text,p.post_keywords,p.post_date
from facebook_reactions r  join facebook_posts p
on(r.post_id = p.post_id)
where r.reaction ='heart'
