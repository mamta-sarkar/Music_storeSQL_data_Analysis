--Moderate
--Q3:  Return all the track names that have a song length longer than the average song length. 
Return the name and the  
milliseconds for each track. Order by the song length with the longest songs listed first. 

SELECT name,milliseconds FROM music_database.track
where milliseconds>(SELECT avg(milliseconds) FROM music_database.track)
order by milliseconds desc

