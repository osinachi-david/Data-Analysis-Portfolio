-- SQL FUNCTIONS

-- SQL Aggregate functions 
-- these perform calculations on a set of values 
-- and returns a SINGLE value.

-- SQL MIN() MAX()
select department_id from Employees
select min(department_id) from Employees
select max(department_id) from Employees
select * from employees
select count(*) as distinctdepartment_id
from (select distinct manager_id from Employees)

select SALARY from Employees

select max(SALARY) from Employees
select min(SALARY) from Employees

--display all details for the employee with 
--the lowest salary 
sel
select * from Employees   ----something is wrong wth this query
where SALARY = min(SALARY)

-- SQL COUNT() AVG() SUM()

select DEPARTMENT_ID from Employees
select count(distinct DEPARTMENT_ID) from Employees

--what is the total monthly pay for all employees?
select sum(salary) Payroll from Employees


--who earns the lowest
select min(salary) from Employees


--average salary paid monthly?
select avg(salary) from Employees

-- SQL GROUPBY CLAUSE 
--used with select statement and aggregate funcs
-- to group rows together by common values 

select DEPARTMENT_ID, 
count(*) "Number of staff" 
from Employees
group by DEPARTMENT_ID


--average salaries 
select DEPARTMENT_ID, 
avg(SALARY)
from Employees
group by DEPARTMENT_ID

--the group by column doesnt have to be in the select list
select avg(SALARY), DEPARTMENT_ID
from Employees
group by DEPARTMENT_ID

--Grouping by more than one column
select DEPARTMENT_ID, JOB_ID, 
count(*) "Number of Staff",
sum(salary) "Staff payments"
from Employees
group by DEPARTMENT_ID, JOB_ID
order by DEPARTMENT_ID

select 
count(*) "Number of Staff",
sum(salary) "Staff payments"
from Employees
group by DEPARTMENT_ID, JOB_ID

--comibining with the where clause
select DEPARTMENT_ID, JOB_ID, 
count(*) "Number of Staff",
sum(salary) "Staff payments"
from Employees
where DEPARTMENT_ID > 40
group by DEPARTMENT_ID, JOB_ID
order by DEPARTMENT_ID

--SQL Having Clause 
--used for filtering groups based on a condition
-- used with the group by clause to specify a 
--filter condition on a group or an aggregate

--limitations of the where clause

--select sum(salary) 
--from Employees
--group by DEPARTMENT_ID
--where sum(salary) > 7500;
-- where clause cannot handle the aggregate function 
-- within specifying a select list 

--using the Having clause can provide a solution
-- to this problem

select sum(salary), DEPARTMENT_ID
from Employees
group by DEPARTMENT_ID
having sum(salary) > 9000

--display all details for the employee with 
--the lowest salary 
select *
from Employees
where SALARY = (
			   select min(salary) from Employees
			   )

-- AND & OR Operators 
--AND will return TRUE if BOTH CONDITIONS 
--EVALUATE TO TRUE

--EXAMPLE
select * from Employees
where SALARY > 7000 AND DEPARTMENT_ID = 90

--OR Operator 
--will return true when either of the 
--conditions is TRUE
select * from Employees
where SALARY > 7000 OR DEPARTMENT_ID = 90

--QS
--Create a report for HR to display employees
--with a salary greater than 5000 from depts
--60 and 90
--ANS1
select * from Employees
where SALARY > 5000 and 
(DEPARTMENT_ID=60 or DEPARTMENT_ID=90)

--ANS2
select * from Employees
where SALARY > 5000 and
DEPARTMENT_ID IN (60, 90)

-- SQL SUBQUERIES 
--they provide an easy way to handle 
-- the queries that depend on the results 
--from another query
--However, NOTE that
--1. a subquery must be written within 
--parentheses
--2. A subquery must return only one column

--Example
select LAST_NAME, SALARY 
from Employees
where salary > (select salary 
				from Employees
				where FIRST_NAME='Bruce')
order by SALARY asc

-- inner query returns no result 
select LAST_NAME, SALARY 
from Employees
where salary > (select salary 
				from Employees
				where FIRST_NAME='cvei')
order by SALARY asc

-- Group functions with subqueries 
select LAST_NAME, SALARY 
from Employees
where salary = (select max(salary) 
				from Employees
				)
order by SALARY asc

-- Multiple rows returned
-- here we need to use a 
-- multiple row operator (ANY)

select LAST_NAME, JOB_ID, SALARY 
from Employees
where salary > ANY (select salary 
				from Employees
				where JOB_ID='IT_PROG')
AND JOB_ID <> 'IT_PROG'
order by SALARY asc


--Next class
-- EXISTS OPERATOR