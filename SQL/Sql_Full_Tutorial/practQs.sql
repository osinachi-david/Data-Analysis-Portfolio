--Practice questions 
--Q1 Due budget issues, the HR dept needs a
--report that displays the last name and first
-- name as Full Name, and Salary of employees 
-- who earn more than 8000.
--Save your result as txt file 

select FIRST_NAME + ' ' + LAST_NAME "Full Name",
SALARY
from Employees
where SALARY > 8000

select CONCAT(first_name,' ',LAST_NAME) as 
Full_Name, Salary 
from Employees
where SALARY > 8000

--Q2
--Create a report that displays the lastname 
-- and department number for employee 126.

select * from Employees
select LAST_NAME, DEPARTMENT_ID 
from Employees
where EMPLOYEE_ID=126

--Q3
--The HR dept needs to find high-salary and 
--low-salary employees. Display the last name 
-- and salary for any employee not in the range 
-- of 4000 to 10000

select LAST_NAME, SALARY 
from Employees
where SALARY < 4000 or SALARY > 10000 