--Avance
--Q1:  Find how much amount spent by each customer on artists? Write a query to return customer 
name, artist name and  
total spent. 

SELECT c.first_name,a.name,sum(i.total) FROM music_database.customer1 c  
join music_database.invoice i 
on c.ï»¿customer_id=i.customer_id
join music_database.invoice_line il
on il.invoice_id=i.invoice_id
join music_database.track t 
on t.track_id=il.track_id
join music_database.album5 al
on al.ï»¿album_id=t.album_id
join music_database.artist1 a 
on a.ï»¿artist_id=al.artist_id
group by first_name,a.name
