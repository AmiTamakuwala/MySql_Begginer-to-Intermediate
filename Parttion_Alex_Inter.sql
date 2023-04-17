-- ##########		"PARTITION"		############

select *
	from emp_intermediate.profile;
    
select *
	from emp_intermediate.salary;
    
	/*
	-- In Parttion we will get the total count.
	-- Steps for "PARTITION"...
	-- 1. select 
	-- 2. Col names,
	-- 3. Count(col_name) over (partion by col_name)
	-- 4. from table name.
    */

-- QUS:
-- check the total count of male and female. 
-- or how many male and female empoloyees we have in the dataset?
-- use Profile and saalry table.
-- gijhve alias name to the new column for total count of gender.
    
select
	First_Name, Last_Name, Gender, Salary,
    count(Gender) over (partition by Gender) as Total_Gender
from emp_intermediate.profile as Bio
	join emp_intermediate.salary as Sal
    on Bio.EmpID = Sal.EmpID;
    
-- let's check this same statement with "GROUP BY"

-- ##############		"GROUP BY"		##############

select
	First_Name, Last_Name, Gender, Salary,
    count(Gender) as countofGender
from emp_intermediate.profile as Bio
	join emp_intermediate.salary as Sal
    on Bio.EmpID = Sal.EmpID
group by First_Name, Last_Name, Gender, Salary,gender;

	-- ANSWER with EXPLANATION:
    -- as we saw in group by statement we get the result..
    -- but not the total count of gender.

-- if we want the total count of gender only.
-- we will not the first or last anme of the employees. 
-- let's check that scrpit.
 
select
	gender,
	count(Gender) as countofGender
from emp_intermediate.profile as Bio
	join emp_intermediate.salary as Sal
    on Bio.EmpID = Sal.EmpID
group by gender;

	-- ANSWER:
    -- as we get the total count of gender but without the names.
	-- result will give error if we include first_name , last_name with count(gender) and also group by.

















