use sakila;

-- agregate functions -- min max sum avg length

select * from customer;
select length(first_name) as count_of_words from customer;

select * from customer;
show tables;
select * from payment;

select max(amount) as max_amount from payment;

select min(amount) as max_amount from payment;

select avg(amount) as max_amount from payment;

select sum(amount) as max_amount from payment;

select power(2,3) as power;

select count(*) as total_records from customer;

select abs(-90) as positive;

select * from customer;

select max(address_id) as max_value from customer;

select * from customer;

select sum(address_id) as max_value from customer where customer_id between 1 and 10;

select sum(address_id) as total from customer where customer_id between 10 and 15;

select avg(address_ID) as average from customer where active=0;

-- limit
select * from customer

limit 5;

-- offset

select * from customer

limit 3 offset 5;

-- string functions 

select concat('shekhar','raghav') as name;

select concat(first_name,' ',last_name) as full_name from customer;

select lower(first_name) as name from customer;

select substr('sekhar',2,2) as filter;

select left('sekhar',3) as ans;

select right('sekhar',3) as ans;

select *from customer where first_name like 'a__';

select right(first_name,2) from customer where first_name like '%a%';

select locate('A',first_name),first_name from customer;

select first_name,substr(first_name,locate('A',first_name)+1,2) as filter from customer;






