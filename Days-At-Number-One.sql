select us.trackname, count(distinct(wr.date))
from spotify_daily_rankings_2017_us us
left join spotify_worldwide_daily_song_ranking wr
on us.trackname = wr.trackname
where wr.position = 1 and us.position = 1
group by us.trackname
order by us.trackname
