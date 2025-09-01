create database test;
use test;
CREATE TABLE Orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
amount DECIMAL(10,2)
);

INSERT INTO Orders (order_id, customer_id, order_date, amount) VALUES

(1, 101, '2024-01-05', 250.00),
(2, 102, '2024-01-15', 400.00),
(3, 101, '2024-02-10', 180.00),
(4, 103, '2024-02-12', 500.00),
(5, 102, '2024-03-01', 700.00),
(6, 101, '2024-03-05', 300.00),
(7, 104, '2024-03-20', 150.00),
(8, 103, '2024-04-01', 450.00),
(9, 105, '2024-04-15', 320.00),
(10, 101, '2024-04-20', 280.00),
(11, 106, '2024-05-02', 600.00),
(12, 102, '2024-05-10', 750.00),
(13, 104, '2024-05-15', 200.00),
(14, 103, '2024-06-01', 550.00),
(15, 105, '2024-06-10', 400.00),
(16, 106, '2024-06-20', 620.00),
(17, 101, '2024-07-05', 310.00),
(18, 102, '2024-07-10', 720.00),
(19, 104, '2024-07-20', 180.00),
(20, 103, '2024-08-01', 470.00),
(21, 105, '2024-08-15', 390.00),
(22, 106, '2024-08-25', 640.00),
(23, 101, '2024-09-05', 350.00),
(24, 102, '2024-09-10', 710.00),
(25, 104, '2024-09-20', 210.00);
select * from orders;

-- Q5 orders on  weekends
select  dayofweek(now());

select * from orders where dayofweek(order_date) in(1,7);

-- Q4 find the orders placed on the latest order date in the table 

select max(order_date) from orders;
select * from orders where order_date=(select max(order_date) from orders);

select * from orders where order_date =' 2024-09-20';

-- Q2 find orders that are greater than the average amount in march 2024
select avg(amount) from orders where month(order_date)='03';
select * from orders where amount>(select avg(amount) from orders where month(order_date)='03') and month(order_date)='03';
select * from orders;

-- Q3 get customer who spent more than overall average spend across all month

select customer_id,sum(amount) as total,avg(amount) from orders group by customer_id
having total>(select avg(amount) from orders);

select customer_id from orders where amount>(select customer_id,avg(amount) from orders group by customer_id,order_date);


-- Q1
select customer_id,min(order_date) from orders
where month(order_date)=2 and year(order_date)=2024
group by customer_id;

select customer_id , order_date from orders as o
where order_date=(SELECT min(order_date) from orders as ot 
where o.customer_id=ot.customer_id and month(order_date)=2 );


-- Q6 find the orders with the highest amount in each month 

select  month(order_date),max(amount) from orders group by month(order_date);  

s
