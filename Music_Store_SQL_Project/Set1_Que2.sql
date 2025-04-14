--Easy
--Q2:  Which countries have the most invoices?

SELECT billing_country, count(*) num_of_order FROM music_database.invoice
group by billing_country
order by num_of_order desc
