-- tables in the database 
select * from employees
select * from Departments
select * from Countries
select * from Job_History

select * from Employees
where FIRST_NAME='John'

-- To check for a pattern 
-- USE THE LIKE OPERATOR 
-- 2 wildcards are used with the LIKE operator: % and _
-- % represents 0, 1 or Multiple characters 
-- _ represents a SINGLE character 

--Ex
select * from Employees
where FIRST_NAME LIKE 'A%'

select * from Employees
where FIRST_NAME LIKE 'A___'

select * from Employees
where FIRST_NAME LIKE '__A%'

--First Names that start with C and end with S
select * from Employees
where FIRST_NAME LIKE 'C%S'

-- select all last names starts with A and are at 
-- least 5 charaters long
select * from Employees
where LAST_NAME LIKE 'A____%'

--Defining string ranges
select * from Employees
where FIRST_NAME between 'AL' and 'D'

-- MORE WILDCARDS 
-- [] THIS MATCHES CHAR WITHIN THE BRACKETS 
-- ^ THIS MATCHES ANY CHAR NOT IN THE BRACKET
-- - REPRESENTS A RANGE OF CHARACTERS 

--EXAMPLES
select FIRST_NAME, LAST_NAME from Employees
where FIRST_NAME LIKE 'A_[^madl]%'

select * from Employees
where FIRST_NAME LIKE 'C[a-z]%'
order by SALARY desc

--EX
-- find the number of employees that have
-- ST in their jobID.

select count(*) "Store Dept Workers" from Employees
where JOB_ID like 'ST%'

--find the total number of employees in the sales and IT 
-- depts

select count(*) from Employees
where JOB_ID like 'SA%' or JOB_ID like 'IT%'

--EXISTS Operator 
-- used in queries where the query result depends on whether or 
-- not certain rows exist in a table. It evaluates to TRUE if 
-- the subquery returns at least one row 

--Example
select * from Departments
where exists 
		(select * from Employees
		where Employees.DEPARTMENT_ID=Departments.DEPARTMENT_ID)

select * from Departments

-- SQL joining Tables 
-- when you query two or tables at a time and get a combined 
-- result set it's referred to as joining 

--types 
-- full join, inner join, outer join, cross join 

--SQL INNER JOIN 
--it is the most common type of join 
-- it returns only those rows that have a match in both 
-- joined tables 

--Example
select 
Departments.DEPARTMENT_ID, Departments.DEPARTMENT_NAME,
Employees.EMPLOYEE_ID, Employees.FIRST_NAME, Employees.SALARY,
Employees.JOB_ID
from Departments
inner join Employees ON
Departments.DEPARTMENT_ID = Employees.DEPARTMENT_ID

select * from Job_History
select * from Departments

select D.DEPARTMENT_ID, D.DEPARTMENT_NAME, 
JH.EMPLOYEE_ID, JH.JOB_ID, JH.START_DATE, JH.END_DATE
from Departments D
inner join Job_History JH ON
D.DEPARTMENT_ID = JH.DEPARTMENT_ID

--outer joins 
--left outer join  and right outer joins
-- join Employees table with Job_history 
select D.DEPARTMENT_ID, D.FIRST_NAME, 
JH.EMPLOYEE_ID, JH.JOB_ID, JH.START_DATE, JH.END_DATE
from Employees D
right outer join Job_History JH ON
D.DEPARTMENT_ID = JH.DEPARTMENT_ID

-- outer joins 
--( left outer join, right outer join, full outer join)
-- they return the rows even if they don't have related rows 
-- in the joined table 

--full outer join 
select D.DEPARTMENT_ID, D.FIRST_NAME, 
JH.EMPLOYEE_ID, JH.JOB_ID, JH.START_DATE, JH.END_DATE
from Employees D 
left outer join Job_History JH ON
D.DEPARTMENT_ID = JH.DEPARTMENT_ID

select * from Locations
select * from Employees
select * from Countries
select * from Departments

--find out where the employees work ?
select L.LOCATION_ID, L.CITY,
C.COUNTRY_NAME, D.DEPARTMENT_NAME,
E.FIRST_NAME
from Locations L
join Countries C
ON
L.COUNTRY_ID = C.COUNTRY_ID
join Departments D
ON
D.LOCATION_ID = L.LOCATION_ID
join Employees E
ON
E.DEPARTMENT_ID = D.DEPARTMENT_ID

--CROSS JOIN 
