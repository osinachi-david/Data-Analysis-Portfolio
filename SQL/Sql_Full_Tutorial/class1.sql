SELECT FIRST_NAME, HIRE_DATE, SALARY FROM 
Employees

SELECT FIRST_NAME, HIRE_DATE, SALARY 
FROM Employees
WHERE SALARY  > 5000;

--THIS IS A COMMENT--

--SQL STATEMENTS ARE NOT CASE SENSITIVE 
select FIRST_NAME from Employees

select FIRST_NAME,
SALARY 
from Employees

--SQL SELECT STATEMENT 
select FIRST_NAME, SALARY from Employees

select * from Employees

--Using arithmetic operators 
select last_name, SALARY, SALARY + 1000 
from Employees

select last_name, SALARY, SALARY * 12, 
12* (SALARY + 1000)
from Employees

-- BODMAS is supported 
-- for operator precedence 


--Null values 
select * from Employees

select LAST_NAME, 12*SALARY*COMMISSION_PCT 
from Employees

--Defining a column alias 

select LAST_NAME as "name", salary, 
salary + 1000 "Bonus for Excellent Performance"
from Employees

SELECT * FROM Employees

select LAST_NAME AS NAME, SALARY, SALARY+ 1000 "BONUS FOR EXCELLENT PERFORMANCE"

FROM Employees
WHERE DEPARTMENT_ID = 100

select LAST_NAME, salary, 
salary + 1000 as Increment
from Employees

select * from Employees

select last_name "Name", 
12*SALARY "Annual Salary" 
from Employees

-- Adding Conditions to Querries 

--SQL WHERE Clause 
-- conditionals: 
-- < less than 
-- > greater than 
-- = equal to
-- <= less then or equal
-- >= greater than or equal 

select LAST_NAME, SALARY 
from Employees
--condition
where salary < 5000

--other operators 
-- LIKE : simple pattern matching 
-- IN : used to match a list or subquery 
-- BETWEEN : check if a value is within a range of values 

-- IN and Between Operators 
--IN
select * from employees
where DEPARTMENT_ID not IN (20, 30)

select * from Departments

-- BETWEEN

select LAST_NAME, salary
from Employees
where SALARY
between 8500 and 11000
