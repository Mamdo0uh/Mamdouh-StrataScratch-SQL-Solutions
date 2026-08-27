select artist,count(id) as n_occurrences
from spotify_worldwide_daily_song_ranking
group by artist
