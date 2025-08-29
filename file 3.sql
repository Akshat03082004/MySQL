-- Date and Time
select now(); -- year-month-date-hours-minutes-seconds

select curdate(); -- only the date

select sysdate();

select date('2025-07-25 10:51:45');

select year('2025-07-25 10:51:45');

select month('2025-07-25 10:51:45');

select minute(now());

select extract(year from now());

select monthname(now());

select dayname(now());

select week(now());

select weekofyear(now());

select quarter(now());

select dayofyear(now());

select dayofweek(now());



-- arthmetic on date time

select date_add(now(),interval 9 day);

select date_add(now(),interval 1 month);

select datediff('2025-07-25','2003-08-03');

use sakila;

select date_format(create_date,"%d-%m-%y") from customer;

select makedate(2025,30);

select maketime(10,5,6);

use sakila;
 select * from payment;
 
 select max(amount) from payment;
 
 select min(amount) from payment;
 
 select avg(amount) from payment; 
 
  select amount , if (amount>4.29,'higher','lower')as cateogry from payment;
-- if ( condition , true , false )

SELECT *,
  CASE 
    WHEN amount < 3.0 THEN 'low'
    WHEN amount >= 3.0 AND amount < 5.0 THEN 'medium'
    WHEN amount >= 5.0 THEN 'high'
  END AS class
FROM payment;

-- order by

select * from customer

order by address_id asc;

select * from payment
 order by amount desc;
 
 select * from customer order by first_name ;

-- group by
select staff_id,sum(amount) from payment -- aggregate functions
group by staff_id;

select store_id from customer
group by store_id;

select distinct store_id from customer;

-- Having clause 
-- generally used by after the group by

select store_id,avg(address_id) from customer
group by store_id
having store_id=2;

select store_id,sum(address_id) from customer;

select store_id from customer
where address_id>241
group by store_id;

show tables;
select * from customer;