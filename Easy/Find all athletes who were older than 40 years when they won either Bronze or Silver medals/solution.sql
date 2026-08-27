select name
from olympics_athletes_events
where age > 40 and (medal ='Silver' or medal ='Bronze')
