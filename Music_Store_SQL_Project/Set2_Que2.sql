--Moderate
--Q2:  Let's invite the artists who have written the most rock music in our dataset. Write q query that 
returns the Artist name 
and total track count the top 10 rock bands.

SELECT a.name,g.name,count(a.name) count_num FROM music_database.artist1 a 
join music_database.album5 al 
on a.ï»¿artist_id=al.artist_id
join music_database.track t 
on al.ï»¿album_id=t.album_id
join music_database.genre g 
on g.genre_id=t.genre_id
where g.name="Rock"
group by a.name,g.name
order by count_num desc
limit 10
