CREATE DATABASE IF NOT EXISTS Office;
use office;
CREATE TABLE employees(
EmpID int primary key,
FirstName varchar(30),
LastName varchar(30),
Department varchar(20),
Salary int,
HireDate date);
INSERT INTO employees (EmpID, FirstName, LastName, Department, Salary, HireDate)
VALUES
(101, 'Alice', 'Johnson', 'IT', 6500, '2020-03-15'),
(102, 'Mark', 'Rivera', 'HR', 4800, '2019-07-22'),
(103, 'Sophia', 'Lee', 'Finance', 7200, '2021-01-10'),
(104, 'Daniel', 'Kim', 'IT', 5800, '2018-11-05'),
(105, 'Emma', 'Brown', 'Marketing', 5300, '2022-04-18'),
(106, 'Liam', 'Patel', 'Finance', 6900, '2020-09-29'),
(107, 'Olivia', 'Garcia', 'HR', 4600, '2017-06-30'),
(108, 'Noah', 'Thompson', 'IT', 7500, '2023-02-12'),
(109, 'Ava', 'Martinez', 'Marketing', 5100, '2019-12-02'),
(110, 'Ethan', 'Davis', 'Finance', 8000, '2016-05-14');

-- List only the FirstName, LastName, and Salary of every employee
select firstName,LastName, Salary from employees;

-- Show all employees who work in the 'IT' department
select * from employees
where Department="IT";

-- Retrieve employees with a salary greater than 6000
select * from employees
where Salary>6000;

-- List all employees ordered by HireDate from newest to oldest.
select * from employees
order by HireDate desc;

-- Show a list of all unique departments present in the table
select distinct department
from employees;

-- Find employees whose first name starts with ‘Aʼ
SELECT *
FROM employees
WHERE FirstName LIKE 'A%';

-- Show employees whose salaries are between 4000 and 7000
select *
from employees
where Salary between 4000 and 7000;

--  Find the average salary of all employees
select avg(salary)
from employees;

--  List each department along with the number of employees, but only include departmentswith more than 2 employees
select department,count(EmpID)
from employees
group by department
having count(EmpID)>2;
