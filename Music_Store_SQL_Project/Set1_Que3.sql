--Easy
--Q3:  What are top 3 values of total invoices?

SELECT total FROM music_database.invoice
order by total desc
limit 3