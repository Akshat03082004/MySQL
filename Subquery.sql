-- Sub querry
select * from customer;
-- Single Row Sub Query
select * from customer where store_id=(select  distinct store_id from customer where store_id=1);
select  distinct store_id from customer where store_id=1;

-- Multi Row
-- in is used because multiple rows are displayed
select * from customer where store_id in (select  store_id from customer where store_id=1);


select * from rental;
select * from film;
select title, rental_rate from film where rental_rate=(select max(rental_rate) from film);
select max(rental_rate) from film;

select * from payment;
select avg(amount) from payment;
select * from payment where amount > (select avg(amount) from payment);

-- find the film whose length is equals to the min film length
select * from film;
select min(length) from film;
select  * from film where length = (select min(length) from film);

select  * from customer;
select * from customer ;



-- Find the customer who has the maximum total payment 
select * from customer;
select * from payment;
select * from customer where customer_id=
(select customer_id from payment
group by customer_id
order by sum(amount) desc
limit 1);

select amount from (select  * from payment) as t7; -- without alias it will not work
use sakila;
select * from customer;
select max(address_id) as full_name from customer where address_id < (select max(address_id) from customer order by address_id limit 1);

show tables;

select  * from customer;
select t from (select address_id as t from customer where address_id <=10) as derived
where t<(select avg(t) from (select address_id as t from customer where address_id <=10)as der);


select first_name,last_name,(select sum(amount) from payment
where payment.customer_id = customer.customer_id) as total_amount
from customer;