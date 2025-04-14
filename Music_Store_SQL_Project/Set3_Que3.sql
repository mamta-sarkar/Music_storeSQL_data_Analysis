--Advance
--Q3:  Write a query that determines the customer that has spent the most on music for each 
country. Write a query that  
returns the country along with the top customer and how much they spent. For countries where 
the top amount spent is 
shared, provide all customers who spent this amount.


 select t.first_name,t.country,t.total,t.rnk
 from 
(SELECT c.first_name,c.country,rank() over(partition by c.country order by i.total desc) rnk,i.total
FROM music_database.customer1 c 
join music_database.invoice i 
on c.ï»¿customer_id=i.customer_id) t
where rnk=1

