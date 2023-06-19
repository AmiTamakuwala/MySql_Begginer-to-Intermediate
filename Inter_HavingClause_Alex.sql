/*
#################		"HAVING STATEMENT"		############
-- having statement is coming after where & group by statement

-- steps or order of having statements:
		1. select
        2. column names, or count, or avg.
        3. from table name
        4. join (if right or left or inner join) 
        5. on (tables with similar column)
        6. where 
        7. group by
        8. "HAVING"
        9. order by
*/

-- get the result of job title where job title is having more than 1 count.

select 
	Job_Title, count(Job_Title) as CountofJob 
		from emp_intermediate.profile
			join emp_intermediate.salary
			on profile.EmpID = salary.EmpID
		group by Job_Title
        having count(Job_Title) > 1;
        
-- get the information of employee's average salary with job title:

select 
	Job_Title, avg(Salary) as avg_salary 
		from emp_intermediate.profile
			join emp_intermediate.salary
			on profile.EmpID = salary.EmpID
		group by Job_Title
        order by avg(salary);
        
 -- now we have avg saalry from all job titles....
 -- get the result of which job title is having more than 45000 avg. salary?
 
 select
	job_title, avg(salary) as avg_salary
		from emp_intermediate.profile
			join emp_intermediate.salary
            on profile.EmpID = salary.empid
		group by Job_Title
        having avg(salary) > 45000
		order by avg(salary);
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 