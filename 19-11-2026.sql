use company;
-- 1 create table named students with column for id, name, and age.
create table students(
id int, name varchar(20), age int);

-- 2 add a new column grade to the students table
alter table students
add column grade varchar(20);

select * from students;

-- 3 rename the grade column to final grade
alter table students rename column grade to final_grade;

-- 4 insert 10 new students ad dummy records
INSERT INTO students (id, name, age, final_grade)
VALUES
(1, 'Rahul', 22, 'A'),
(2, 'Arun', 21, 'B'),
(3, 'Priya', 20, 'A'),
(4, 'Karthik', 23, 'C'),
(5, 'Sneha', 21, 'B'),
(6, 'Vijay', 22, 'A'),
(7, 'Divya', 20, 'B'),
(8, 'Suresh', 24, 'C'),
(9, 'Anitha', 19, 'A'),
(10, 'Manoj', 22, 'B');

set sql_safe_updates = 0;

-- 5 update the age of students id with 1 to age 21
update students set age=21 where id=1;

-- 6 delete the students id with 1 from students table
delete from students where id = 1;

-- 7 retrieve all students aged 19 or older
select * from students where age >=19;

-- 8 retrieve students named divya or anitha 
select * from students where name = "divya" or name = "anitha";

-- 9 retrieve students grade 'a' or 'b' and aged 20 or older
select * from students where final_grade = "a" or final_grade = "b" and age>=20;

-- 10 retrieve students age between 18 to 25
select * from students where age between 18 and 25;

-- 11 retrieve students age with less then =21
select * from students where age <=21;

-- 12 retrieve students with grade greater then c
select * from students where final_grade > "a";

-- 13 count the total number of students
select count(name) from students;

-- 14 calculate average age of students
select avg(age) from students;

-- 15 find the sum of ages for students with grades a or b
select avg(age) from students
 where final_grade = "a" or final_grade = "b";

-- 16 group student by grade and count the number of students by grade
select count(name), final_grade from students
 group by final_grade order by final_grade asc;

-- 17 group students by age and calculate the avg age in each group
select avg(age),final_grade from students group by final_grade;

-- 18 find the grade with highest number of students
select count(*), final_grade from students
 group by final_grade
 order by count(*) desc limit 1;

-- 19 find grades with an  average age greater then 22
select avg(age),final_grade from students 
group by final_grade 
having avg(age) > 20;

-- 20 find the grades with fewer then 3 students
select count(name),final_grade from students
 group by final_grade 
 having count(name)<= 3;

-- 21 find grades with an avarage age between 20 and 25
select avg(age),final_grade from students
 group by final_grade 
 having avg(age) between 20 and 25;

-- 22 list all students in asscending order of age
select * from students order by age asc; 

-- 23 list all students with grades "a" or "b" descending order by age
select name, age, final_grade from students 
where final_grade = "a" or final_grade = "b"
order by age desc;

-- 24 sort students by grade alphabetical order
select * from students order by final_grade asc;