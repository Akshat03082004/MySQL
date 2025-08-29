use sakila;
select * from customer;
select * from payment;

-- Inner Join
select c.first_name,p.amount from customer c 
inner join payment p on c.customer_id=p.customer_id; 

select customer.first_name,payment.amount,address.address from customer 
inner join payment  on customer.customer_id=payment.customer_id
inner join address on customer.address_id=address.address_id;


-- Left Outer join / Left 
use
sakila;
create table t1(id int);
insert into t1 values (1),(2),(3),(4),(5);
create table t2(id int);
insert into t2 values (1),(2),(3),(1),(4);
select * from t2;


select * from t1 
left join t2 on t1.id=t2.id;

-- Right join
insert into t2 (id) values (6),(7);
select * from t1 
right join t2 on t1.id=t2.id;


select * from customer;
select * from rental;
select * from payment;

select c.first_name,c.customer_id,r.rental_id,p.amount from customer c
left join rental r on c.customer_id=r.customer_id
left join payment p on r.rental_id=p.rental_id;


-- Q1 List all customer with there rental and payment detail 
select c.customer_id, c.first_name,r.rental_date, p.amount from customer c
left join rental r on c.customer_id=r.rental_id
left join payment p on r.rental_id=p.rental_id;

-- Q2 Find all the films with there rental and inventory details
select * from film;
select * from inventory;
select * from rental;
select f.title,i.inventory_id,r.rental_date from film f
left join inventory i on f.film_id=i.film_id
left join rental r on i.inventory_id=r.inventory_id;

-- Q4 List all staff member and there payment amount
select * from staff;
select * from payment;
SELECT s.staff_id,s.first_name,s.store_id,SUM(p.amount) AS total_amount FROM staff s
LEFT JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.staff_id, s.first_name, s.store_id;


-- Cross join 
use sakila;
select count( *) from t1 
cross join t2 ;

-- display all possible actors and languages
select * from language;
select actor.first_name,language.name from actor
cross join language;

-- Show all countries with all citites
select * from country;
select *from city;
select country.country,city.city from country
cross join city
group by country.country,city.city;


-- Self join
-- self join can be performed on left,right or inner join
-- no direct keyword for for self join




