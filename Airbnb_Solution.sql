create database Airbnb;
show databases;

use Airbnb;

select * from booking_details;
select * from listingairbnb;

select Column8 from listingairbnb;

ALTER TABLE listingairbnb
DROP COLUMN Column8;

desc booking_details;


# 1. Import Data from both the .CSV files to create tables, Listings and Booking Details.

select * from listingairbnb;
select * from booking_details;

# 2.  Write a query to show names from Listings table.

select name from listingairbnb;

# 3.  Write a query to fetch total listings from the listings table.

select count(*) from listingairbnb;

# 4.  Write a query to fetch total listing_id from the booking_details table.

select count(listing_id) from booking_details;

# 5.  Write a query to fetch host ids from listings table.

select host_id from listingairbnb;

# 6.  Write a query to fetch all unique host name from listings table.

select distinct name from listingairbnb;

# 7.  Write a query to show all unique neighbourhood_group from listings table.

select distinct neighbourhood_group from listingairbnb;

# 8.  Write a query to show all unique neighbourhood from listings table.

select distinct neighbourhood from listingairbnb;

# 9.  Write a query to fetch unique room_type from listings tables.

select distinct room_type from listingairbnb;

# 10. Write a query to show all values of Brooklyn & Manhattan from listings tables.

select * from listingairbnb where neighbourhood_group in ("Brooklyn", "Manhattan");

# 11. Write a query to show maximum price from booking_details table.

select max(price) as maximum_Price from booking_details;

# 12. Write a query to show minimum price from booking_details table.

select min(price) as minimum_price from booking_details;

# 13. Write a query to show average price from booking_details table.

select avg(price) as average_price from booking_details;
 
# 14. Write a query to show minimum value of minimum_nights from booking_details table.

select min(minimum_nights) as minimum_of_minimum_nights from booking_details;

# 15. Write a query to show maximum value of minimum_nights from booking_details table.

select max(minimum_nights) as maximum_of_minimum_nights from booking_details;

# 16. Write a query to show average availability_365.

select avg(availability_365) as average_availability_365 from booking_details;

# 17. Write a query to show id , availability_365 and all availability_365 values greater than 300.

select listing_id, availability_365 from booking_details where availability_365 > 300;

# 18. Write a query to show count of id where price is in between 300 to 400.

select count(listing_id) as count_of_id, price from booking_details  where price > 300 and price <400 group by price;

select count(listing_id) as count_of_id, price from booking_details where price between 300 and 400 group by price;

# 19. Write a query to show count of id where minimum_nights spend is less than 5.

select count(listing_id) as count_of_id, minimum_nights from booking_details where minimum_nights < 5 group by minimum_nights 

# 20. Write a query to show count where minimum_nights spend is greater than 100.

select count(*) as count, minimum_nights from booking_details where minimum_nights > 100 group by minimum_nights;

# 21. Write a query to show all data of listings & booking_details.

ALTER TABLE booking_details
RENAME COLUMN listing_id TO id;

# outer join:

select b.*, l.* from booking_details b
left join listingairbnb l
on b.id=l.id
union all 
select b.*,l.* from booking_details b
right join listingairbnb l
on b.id=l.id;

# Cross join:

select * from booking_details 
cross join 
listingairbnb;

select * from booking_details;
select * from listingairbnb;


# 22. Write a query to show host name and price

select l.host_name,  b.price from listingairbnb l
join booking_details b
on b.id = l.id;

# 23. Write a query to show room_type and price

select l.room_type,  b.price from listingairbnb l
join booking_details b
on b.id = l.id;

# 24. Write a query to show neighbourhood_group & minimum_nights spend

select l.neighbourhood_group,  b.minimum_nights from listingairbnb l
join booking_details b
on b.id = l.id;

# 25. Write a query to show neighbourhood & availability_365

select l.neighbourhood,  b.availability_365 from listingairbnb l
join booking_details b
on b.id = l.id;

# 26. Write a query to show total price by neighbourhood_group

select l.neighbourhood_group, b.price  from listingairbnb l
join booking_details b
on b.id = l.id;

# 27. Write a query to show maximum price by neighbourhood_group

select max(price) maximum_price from booking_details;

select l.neighbourhood_group, max(b.price) as maximum_price from listingairbnb l
join booking_details b
on b.id = l.id
group by l.neighbourhood_group;


# 28. Write a query to show maximum night spend by neighbourhood_group

select l.neighbourhood_group, max(b.minimum_nights) as maximum_night from listingairbnb l
join booking_details b
on b.id = l.id
group by l.neighbourhood_group;

# 29. Write a query to show maximum reviews_per_month spend by neighbourhood

select l.neighbourhood, max(b.reviews_per_month) as maximum_reviews_per_month from listingairbnb l
join booking_details b 
on b.id = l.id
group by l.neighbourhood;

# 30. Write a query to show maximum price by room type

SELECT l.room_type, MAX(b.price) AS max_price
FROM listingairbnb l
JOIN booking_details b
ON l.id = b.id
GROUP BY l.room_type;

# 31. Write a query to show average number_of_reviews by room_type

SELECT l.room_type, AVG(b.number_of_reviews) AS average_number_of_reviews
FROM listingairbnb l
JOIN booking_details b
ON l.id = b.id
GROUP BY l.room_type;

# 32. Write a query to show average price by room type

select l.room_type, avg(b.price) as avg_price from listingairbnb l
join booking_details b 
on l.id= b.id
group by l.room_type;

# 33. Write a query to show average night spend by room type

select l.room_type, avg(b.minimum_nights) as avg_night_spent from listingairbnb l
join booking_details b 
on l.id= b.id
group by l.room_type;

 
# 34. Write a query to show average price by room type but average price is less than 100

select l.room_type, avg(b.price) as avg_price from listingairbnb l
join booking_details b
on l.id=b.id
group by l.room_type
having avg(b.price) < 100;

# 35. Write a query to show average night by neighbourhood and average_nights is greater than 5

select round(avg(b.minimum_nights)) as avg_nights , l.neighbourhood from booking_details b
join listingairbnb l on b.id= l.id
group by l.neighbourhood
having avg(b.minimum_nights) > 5;

# 36. Write a query to show all data from listings where price is greater than 200 using sub-query.

select l.*, b.price from listingairbnb l join booking_details b on l.id=b.id
where b.price > 200;

select l.* from listingairbnb l where l.id in (select b.id from booking_details b where b.price >200);


# 37. Write a query to show all values from booking_details table where host id is 314941 using sub-query.

select b.* from booking_details b where b.id in (select l.id from listingairbnb l where host_id = 314941);

# 38. Find all pairs of id having the same host id, each pair coming once only.

select distinct(id), host_id from listingairbnb where id= host_id;


# 39. Write an sql query to show fetch all records that have the term cozy in name
   
   select * from listingairbnb where name like "%cozy%";

# 40. Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group
  
  select b.price, l.host_id, l.neighbourhood_group from listingairbnb l
  join booking_details b 
  on l.id = b.id 
  where l.neighbourhood_group in ("manhattan");

# 41. Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood, also make sure price is greater than 100
 
 select l.id, l.host_name, l.neighbourhood, b.price from listingairbnb l
 join booking_details b on l.id=b.id 
 where l.neighbourhood in ("Upper West Side", "Williamsburg") 
 and b.price >100;

# 42. Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant

select l.id, l.host_name, l.neighbourhood, b.price from listingairbnb l
join booking_details b 
on l.id=b.id
where l.host_name in ("Elise") and l.neighbourhood in ("Bedford-Stuyvesant");

# 43. Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights

select l.host_name, b.availability_365, b.minimum_nights from booking_details b 
join listingairbnb l on b.id=l.id 
where b.minimum_nights >100 and availability_365 >100;

# 44. Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but show only that records where number of reviews are 500+ and review per month is 5+

select l.id, l.host_name, b.number_of_reviews, b.reviews_per_month from booking_details b
join listingairbnb l on b.id=l.id
where b.number_of_reviews >500 and b.reviews_per_month >5;

# 45. Write a query to show neighbourhood_group which have most total number of review

select l.neighbourhood_group, max(b.number_of_reviews) as most_total_num_of_review
from booking_details b
join listingairbnb l 
on l.id=b.id
group by l.neighbourhood_group
order by most_total_num_of_review desc limit 1;
 

 

# 46. Write a query to show host name which have most cheaper total price


select l.host_name , b.price as most_cheaper_total_price from booking_details b
join listingairbnb l on b.id = l.id
where b.price =(select min(price) from booking_details  where price>0)
limit 1;

select l.host_name , min(b.price) as most_cheaper_total_price from booking_details b
join listingairbnb l on b.id = l.id
group by l.host_name
order by most_cheaper_total_price asc limit 1;

# 47. Write a query to show host name which have most costly total price

select l.host_name, max(b.price) as most_costly_total_price from booking_details b 
join listingairbnb l on b.id=l.id
group by l.host_name
order by most_costly_total_price desc limit 1;

# 48. Write a query to show host name which have max price using sub-query

select l.host_name, b.price from listingairbnb l join booking_details b on l.id=b.id
where b.price in (select max(price) from booking_details);

# 49. Write a query to show neighbourhood_group where price is less than 100

select l.neighbourhood_group, b.price from listingairbnb l join booking_details b on l.id=b.id
where b.price <100;

# 50. Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price.

select max(b.price) as maximum_price , avg(b.availability_365) as avg_avalability_365, l.room_type from booking_details b 
join listingairbnb l on b.id=l.id
group by l.room_type
order by maximum_price asc;