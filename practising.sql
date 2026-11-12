create database rahul;
create table employees ( emp_id int, emp_name varchar(50), salary decimal(7,2),email varchar
(50),ph_number varchar(10), join_date date);
drop database rahul;
use rahul;
select * from employees;
insert into employees 
values (1, 'Rahul', 25000.00, 'rahul@gmail.com', '9876543210', '2023-01-15'),
(2, 'Arun', 30000.00, 'arun@gmail.com', '9876543211', '2022-05-20'),
(3, 'Kumar', 28000.00, 'kumar@gmail.com', '9876543212', '2023-03-10'),
(4, 'Priya', 35000.00, 'priya@gmail.com', '9876543213', '2021-07-25'),
(5, 'Divya', 32000.00, 'divya@gmail.com', '9876543214', '2022-09-12'),
(6, 'Vijay', 40000.00, 'vijay@gmail.com', '9876543215', '2020-02-18'),
(7, 'Ajay', 27000.00, 'ajay@gmail.com', '9876543216', '2023-06-05'),
(8, 'Sneha', 45000.00, 'sneha@gmail.com', '9876543217', '2019-11-30'),
(9, 'Karthik', 38000.00, 'karthik@gmail.com', '9876543218', '2021-04-14'),
(10, 'Meena', 29000.00, 'meena@gmail.com', '9876543219', '2022-12-01'),
(11, 'Suresh', 50000.00, 'suresh@gmail.com', '9876543220', '2018-08-22'),
(12, 'Anitha', 33000.00, 'anitha@gmail.com', '9876543221', '2023-02-11'),
(13, 'Ramesh', 42000.00, 'ramesh@gmail.com', '9876543222', '2020-10-16'),
(14, 'Deepa', 31000.00, 'deepa@gmail.com', '9876543223', '2022-04-08'),
(15, 'Manoj', 36000.00, 'manoj@gmail.com', '9876543224', '2021-09-19'),
(16, 'Kavya', 48000.00, 'kavya@gmail.com', '9876543225', '2019-06-27'),
(17, 'Surya', 26000.00, 'surya@gmail.com', '9876543226', '2023-07-13'),
(18, 'Naveen', 39000.00, 'naveen@gmail.com', '9876543227', '2020-12-05'),
(19, 'Pooja', 34000.00, 'pooja@gmail.com', '9876543228', '2022-02-17'),
(20, 'Gokul', 55000.00, 'gokul@gmail.com', '9876543229', '2018-03-21');
select * from employees where emp_name = "pooja";
select * from employees where emp_name is null;
update employees 
set emp_name = "TEJU", email = "teju@gmail.com"
where emp_id = 1;
select * from employees;
set sql_safe_updates = 0;
delete from employees;
rollback;
delete from employees where join_date = current_date();
update employees
set join_date = "2026-11-10"
where emp_id = 1;
create database college;
create table students(
std_id int, std_name varchar(20), email varchar(20), ph_number varchar(10));
select * from students;
drop table students;
create table students(std_id int primary key, std_name varchar(20), email varchar(20), ph_number varchar(10));
create table students(std_id int primary key, std_name varchar(20), email varchar(20) unique, ph_number varchar(10));

 -- Write a query to add a new column called City with datatype VARCHAR(50) to the Students table.
 alter table students add city varchar(50);
 
 -- Write a query to modify the Age column to NOT NULL.
 alter table students add age int;
 alter table students modify age int not null;
insert into students
values (2, "rahul","rahul@gamil.com", null, null, 19);

-- Q12. Write a query to display all records from the Students table.
select * from students;
-- Q13. Write a query to display students whose age is greater than 20.
select * from students where age >=23;
-- Q14. Write a query to update Rahul's age from 22 to 23.
update students set age = 23 where std_name = "rahul";
-- Q15. Write a query to delete the student whose ID is 1.
delete from students where std_id = 1;