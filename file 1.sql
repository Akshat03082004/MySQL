show tables;

select * from customer;
select customer_id,first_name,email from customer;

-- operators

-- Arthmetic operators + - * / % **

describe customer;

select customer_id+1,email from customer;
select * from customer;

select 120*3 as  result;

-- logical operators

select * from customer where store_id=1 or active=0;

select * from customer where store_id=1 and active=0;

select * from customer where customer_id!=1 and customer_id<>3; 

-- select 10**3 as result -- not possible directly 

select * from customer;

show tables;
use sakila;
show tables;
select * from customer;

select * from customer where store_id=2;

-- relational operators

select * from customer where adress_id>50;

select * from customer where address_id>50;

select * from customer where address_id<=50;

-- Between 

select * from customer where address_id between 5 and 20;

select * from customer where address_id>=5 and address_id<=20;

-- IN 

select 5 in (1,2,3,4,5) as result;

select * from customer where 20 in ( address_id);

select * from customer where address_id in(20,30);

-- not in

select * from customer where 20 not in ( address_id);

use sakila;

show tables;

select * from customer where address_id between 5 and 20;

select * from customer where(address_id) not in (select (address_id) from customer where address_id !=20);

select * from customer;

select * from customer where address_id in(20,30);

select 6 not in(1,2,4,5,7) as ans;

select * from customer where customer_id not in (1,4,8,3);


-- like

select * from customer where first_name  like 'Ar%';  -- Starting from Ar

select * from customer where first_name like '%A';  --  ending with a 


 select * from customer where first_name like '%a%';  -- a in between
 
 select * from customer where first_name like 'a%a%a';  -- a in at starting,in between,at the last
 
 select * from customer where first_name like '_a%';  -- a in the second position
 
  select * from customer where first_name like '%a_';  -- a in the last second position
  
  select * from customer where first_name like '%a%a%a%';  -- Three a or more
  
 desc customer; 
 
 
 



