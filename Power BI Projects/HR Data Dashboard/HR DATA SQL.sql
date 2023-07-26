Use human_resources;

CREATE TABLE HR_DATA(
	Attrition char(20),
    Business_travel varchar(30),
    CF_age_band char(20),
    CF_attrition_label varchar(30),
    Department char(20),
    Education_field char(20),
    emp_no char (20),
    Employee_number int,
    Gender char (20),
    Job_Role varchar (30),
    Marital_status char(30),
    Over_time char(20),
    over18 char(10),
    Training_times_last_year int,
    Age int,
    CF_current_employee int,
    Daily_Rate int,
    Distance_from_home int,
    Education char(30),
    Employee_count int,
    Environment_Satisfaction int,
    Hourly_rate int,
    Job_involvement int,
    job_level int,
    Job_satisfaction int,
    Monthly_income int,
    Monthly_rate int,
    Num_Companies_Worked int,
    Percent_salary_hile int,
    Performance_rating int,
    Standard_hours int,
    Stock_option_level int,
    Total_working_years int,
    Work_life_balance int,
    Years_at_company int,
    Years_in_current_role int,
    years_since_last_promotion int,
    years_with_curr_Manager int
    )
    
   -- Data was imported into the columns created
   -- lets check it out
   
   select * from hr_data;
  
SELECT count(AGE),IF(AGE>=60,'DUE TO RETIRE',
'ON SERVICE')AS RETIREMENT_STATUS
FROM HR_DATA
WHERE AGE ='60';

use human_resources;
SELECT Gender, COUNT(*) AS TotalEmployees
FROM hr_data
GROUP BY Gender;

-- highest no yrs in the company
select max(total_working_years) as Highest, min(total_working_years) as lowest
from hr_data;

-- distance to work

SELECT
    count(*),
    CASE
        WHEN     Distance_From_Home > 20 THEN 'Far'
        WHEN     Distance_From_Home > 8 THEN 'Not Too Far'
        ELSE 'Near'
    END AS DistanceCategory
FROM
    Hr_data
group by DistanceCategory

-- years in company
select total_working_years,count(total_working_years)as service_year
from hr_data
group by total_working_years
Order by service_year desc


-- Promotion

select count(*), if(total_working_years >= 10,'Promoted', 'not promoted') promotion_status from hr_data
group by promotion_status

-- OR//
SELECT
    count(*),
    CASE
        WHEN    total_working_years >= 10 THEN 'Promoted'
       else 'not promoted'
       
    END AS promotion_status
FROM
    Hr_data
group by promotion_status

SELECT
    COUNT(Total_Working_Years)PROMOTED
 FROM HR_DATA
WHERE
    Total_Working_Years >=10;

select * from hr_data;

-- OVERTIME
SELECT COUNT(*), oVER_TIME FROM HR_DATA
WHERE OVER_TIME= 'YES'

-- TOTAL EMP BY DEPT
SELECT COUNT(*) ,DEPARTMENT
FROM HR_DATA
GROUP BY DEPARTMENT


-- TOTAL EMP BY EDU
SELECT COUNT(*) ,EDUCATION
FROM HR_DATA
GROUP BY EDUCATION

-- RETIREMENT
SELECT COUNT(*)RETIREMENT FROM HR_DATA
WHERE
AGE >= '60'

-- TOTAL EMP BY MARITAL STATUS
SELECT COUNT(*) ,MARITAL_STATUS
FROM HR_DATA
GROUP BY MARITAL_STATUS;








  
    
    
    
    
    
    
    
    
    
    


