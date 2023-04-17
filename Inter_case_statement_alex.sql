/*
###########		"CASE"		#############
-- in case statement we will add 3 conditions..
-- Steps from start to end...
-- 1. Case: start with "CASE"
-- 2. When : condtion started with "When"
-- 3. Then : "THEN" is a condinon
-- 4. Else: "ELSE" is also condtion statement.
-- 5. End : we will end the condtion with the help of "END" statement.
*/

-- start with simple question:
-- get the details of employee's name, age and age...
-- add one more column if employee is young, old or stanely!
-- don't take a those employees whose age is "NULL"
-- get the age by ascending order. 

select First_Name, Last_Name, Age,
case 
	when Age = 38 then 'Stanely'
    when Age > 30 then 'Old'
    else 'Baby'
end as Age_Group
	from emp_intermediate.profile
		where Age is not null
        order by Age;

-- now case statement with the "join":
-- QUS: get the employee's name, job title and salary..
-- now company is deciding to give increment to employees.
-- So, increment is..
	-- if "salesman" increment "10%"
    -- if 'accountant" increment "5%'
    -- if "HR" increment "1%"
    -- else "3%" increment.

select First_Name, Last_Name, Job_Title, Salary,
case
	when Job_Title = 'Salesman' then Salary + (Salary * .10)
    when Job_Title = 'Accountant' then Salary + (Salary * .05)
    when Job_Title = "HR" then Salary + (Salary * .01)
    else Salary + (Salary * .03)
end as SalaryAfterIncrement
	from emp_intermediate.profile
		join emp_intermediate.salary
		on profile.EmpID = salary.EmpID
        order by Salary;
        


select *
	from emp_intermediate.profile;

select *
	from emp_intermediate.salary;




































































































