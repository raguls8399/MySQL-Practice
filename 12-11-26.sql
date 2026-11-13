create database sales;
use sales;
drop database sales;
drop table customers;
create table customers(
c_id int primary key auto_increment,
c_name varchar(20),
age int );
select * from customers;
INSERT INTO customers (c_name, age)
VALUES
('Rahul', 22),
('Arun', 25),
('Kumar', NULL),
('Priya', 23),
('Ravi',  NULL),
('Sneha', 21),
('Vijay',  NULL),
('Anu', 24),
('Karthik', 26),
('Meena',  NULL);

drop table transaction;
create table transaction(
t_id int primary key auto_increment,
amount decimal(6,2),
customer_id int,
foreign key (customer_id) references customers(c_id)
);
INSERT INTO transaction (amount, customer_id)
VALUES
(1500.50, 1),
(2500.00, 2),
(3500.75, 3),
(NULL, 4),
(1200.00, 1),
(4500.50, 5),
(NULL, 6),
(2000.00, 2),
(5500.25, 8),
(3000.00, 10);
select * from transaction;

select * from customers inner join transaction
on transaction.customer_id = customers.c_id;

select c_id, c_name, amount, t_id from customers inner join transaction
on transaction.customer_id = customers.c_id;

select c_id, c_name, amount, t_id from customers left join transaction
on transaction.customer_id = customers.c_id;


select  c_name, amount, t_id from customers right join transaction
on transaction.customer_id = customers.c_id;

-- 3. Display c_id, c_name, age, and amount from both tables.
select c_id, c_name, age, amount from customers left join transaction
on transaction.customer_id = customers.c_id;

-- 6. Display all customers and their transaction amounts using LEFT JOIN.
select c_id, c_name, amount, t_id from customers left join transaction
on transaction.customer_id = customers.c_id;

-- 7. Display all transactions and their customer names using RIGHT JOIN.
select t_id, amount, c_name from transaction right join customers
on transaction.customer_id = customers.c_id;

-- 8. Display customers who have not made any transactions.
select c_id, c_name, t_id, amount from customers left join transaction 
on transaction.customer_id = customers.c_id
where transaction.t_id is null;

-- 9. Display customers whose age is NULL along with their transaction amounts
select c_name, age, amount from customers left join transaction
on transaction.customer_id = customers.c_id
where age is null;
