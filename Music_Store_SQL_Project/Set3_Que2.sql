--Advance
--Q2:  We want to find out the most popular music genre for each country. We determine the most 
popular genre as the genre  
with the highest amount of purchases. Write a query that returns a each country along with the 
top genre. For the  
countries where the maximum number of purchases is shared return all genres. 


SELECT c.country,g.name,sum(i.total) FROM music_database.customer1 c  
join music_database.invoice i 
on c.ï»¿customer_id=i.customer_id
join music_database.invoice_line il
on il.invoice_id=i.invoice_id
join music_database.track t 
on t.track_id=il.track_id
join music_database.genre g 
on g.genre_id=t.genre_id
group by c.country,g.name
order by c.country,g.name,sum(i.total) desc