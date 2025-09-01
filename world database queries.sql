-- Subquery --
-- A query nested within a query
-- outer query(inner query)

use world;
select * from city;
show tables;
select population,name from city where name= "Kabul";

select population,name from city where population>1780000; 

-- subquery example
select name,population from city where population>(select population from city where name= "Amsterdam");

select * from city;

-- get the name of the city where district is same as of the district for amsterdam

select district from city where name="Amsterdam";

select name,district from city where  district=(select district from city where name="Amsterdam");

-- get the country code  and the country name where the continent matches with the continent of the country albania
-- get the continent the name of the country where life expentency matches with the lifeex of country name cookislands
--  get the con code and continent and GNP value for the countries where the region does not match with region of country Benin
select * from country;

-- ans 1
select continent from country where name ="Albania";
select name,code,continent from country where continent=(select continent from country where name ="Albania");

-- ans 2 
select LifeExpectancy from country where name="Cook islands";
select continent,name,LifeExpectancy  from country where LifeExpectancy=(select LifeExpectancy from country where name="Cook islands");

-- ans 3
select region from country where name="Benin";
select code,name,GNP from country where region!=(select region from country where name="Benin"); -- <> not sign 

-- single row subquerry 


-- multi row subquerry 
-- no operators like =,<,>,<>,==
-- we generallu use 'in' 
select region,continent  from country where continent="Africa";

-- i need to get con name and pop. for all the con avail in continent in europe

select name,population,continent from country where continent="europe";

select name , population from country where name in(select name from country where continent="Europe");

-- where life exp match with the lifeexp of name bahamas

select * from country;
select name, code from country where LifeExpectancy = (select LifeExpectancy from country where name = 'Bahamas');

use sakila;
select payment_id,customer_id,amount from payment
where amount=(select amount from payment where payment_id=5);

select payment_id,customer_id,amount from payment
where amount in (select amount from payment where payment_id=2 or payment_id=3); -- multi line query 

select payment_id,customer_id,amount from payment
where amount =any (select amount from payment where payment_id=2 or payment_id=3); -- =any or in are same 

-- >any means greater than the minimum value of subquerry
select payment_id,customer_id,amount from payment
where amount >any (select amount from payment where payment_id=2 or payment_id=3); 

select payment_id,customer_id,amount from payment
where amount <any (select amount from payment where payment_id=2 or payment_id=3);


select payment_id,customer_id,amount from payment
where amount <=any (select amount from payment where payment_id=2 or payment_id=3);


select payment_id,customer_id,amount from payment
where amount >all (select amount from payment where payment_id=2 or payment_id=3); 

-- get the name of country whose pop>all the pop of all the countries from nort america

Select * from world.country;
select name,Population from world.country where 
population >all(select name from world.country 
where Continent='North America');

-- get the country code , name  whose lifeexp is same as for the countries from europe
-- get the name , continent for the countries who have got their inde. nearby the indepe year of the countriies from asia

-- ans 1
select LifeExpectancy from world.country where continent="Europe";
select code,name,LifeExpectancy from world.country where LifeExpectancy =any(select LifeExpectancy from world.country where continent="Europe");

-- ans2 
select IndepYear from world.country where continent="asia";
select name,continent,population from world.country where IndepYear>any(select IndepYear from world.country where continent="asia");

select count(*),continent from world.country where IndepYear>any(select IndepYear from world.country where continent="asia") and Continent!="asia" group by continent;
 
 
select * from world.country;



-- order by
select * from world.country order by name;


select * from world.country order by region,SurfaceArea ;

select * from world.country order by region desc,SurfaceArea asc ;


