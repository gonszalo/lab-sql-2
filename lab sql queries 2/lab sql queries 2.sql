select * from actor where first_name = 'Scarlett'
select * from actor where last_name = 'Johansson'



select distinct f.title
from inventory i
join film f on f.film_id = i.film_id; 

select distinct film.title from rental
join inventory on rental.inventory_id = inventory.inventory_id
join film on inventory.film_id = film.film_id

select max(timestampdiff(day, rental_date, return_date)) from rental;

select min(timestampdiff(day, rental_date, return_date)) from rental;

select length from film;

select max(length) from film;
select min(length) from film;

select avg(length) from film;

SELECT TIME_FORMAT(length, "%H %i ")from film;

select avg(length), truncate(avg(length)/60, 0) , truncate(avg(length)%60, 0) from film;

select concat( truncate(avg(length)/60, 0),
", " ,
truncate(avg(length)%60, 0)) from film;




select count(*) from film 
where length > 180

select * from film 
where length > 180

select *  from staff

select concat(first_name, ".", last_name, "@sakilacustomer.org") from staff 

select max(length(title)) from film 
select title, lengtH(TITLE) FROM FILM
ORDER BY LENGTH(TITLE) desc
