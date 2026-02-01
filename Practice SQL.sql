CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE teacher(
id INT PRIMARY KEY ,
name VARCHAR(30) NOT NULL,
subject VARCHAR(30),
salary INT);
INSERT INTO teacher
(id,name,subject,salary)
VALUES
(23,"Ajay","Maths",50000),
(47,"Bharat","English",60000),
(18,"Chetan","Chemsitry",45000),
(9,"Divya","Physics",75000);
SELECT * FROM teacher;
ALTER TABLE teacher
CHANGE column salary ctc int;
UPDATE teacher
set ctc= ctc*1.25;
SET SQL_SAFE_UPDATES = 0;
ALTER TABLE teacher
ADD column city varchar(20) default "gurgaon";
ALTER TABLE teacher
DROP column ctc;
CREATE TABLE STUDENT(
roll_no int primary key,
name varchar(50) not null,
city varchar(50),
marks int);
insert into student
(roll_no, name, city, marks)
values
(110,"Adam","Delhi",76),
(108,"Bob","Mumbai",65),
(124,"Casey","Pune",94),
(112,"Duke","Pune",80);
select * from student;
select * from student
where marks>75;
select city,max(marks)
 from student
group by city;
select avg(marks)
from student;
alter table student
add column grade varchar(2);
update student
set grade = "0" where marks>=80 ;
update student
set grade = "A" where marks>=70 and marks<80 ;
update student
set grade = "B" where marks>=60 and marks<70 ;