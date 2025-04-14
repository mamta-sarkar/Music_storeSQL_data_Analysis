--Easy
Q5:  Who is the best customer? The customer who has spent the most money will be declared the 
best customer. Write a  
query that returns the person who spend the most money. 


SELECT 
    t1.ï»¿customer_id,t1.first_name,sum(t2.total) total
FROM
    music_database.customer1 t1
        JOIN
    music_database.invoice t2 ON t1.ï»¿customer_id = t2.customer_id
    GROUP BY t1.ï»¿customer_id,t1.first_name
ORDER BY total DESC
LIMIT 1

