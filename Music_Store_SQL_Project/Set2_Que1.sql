--Moderate
Q1:  Write query to return the email, first name, last name, & genre of all Rock Music listeners. 
Return your list ordered  
alphabetically but email starting with A.

SELECT c.first_name,c.last_name,c.email, g.name FROM music_database.customer1 c  
join music_database.invoice i 
on c.ï»¿customer_id=i.customer_id
join music_database.invoice_line il
on il.invoice_id=i.invoice_id
join music_database.track t 
on t.track_id=il.track_id
join music_database.genre g 
on g.genre_id=t.genre_id
where g.name="Rock"
order by c.email asc