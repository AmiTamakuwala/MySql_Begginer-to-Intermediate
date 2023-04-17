insert into employeedemo.employeedemography Values
	(1001, 'Jim', 'Halpert', 30, 'Male'),
    (1002, 'Pam', 'Beasley', 30, 'Female'),
    (1003, 'Dwight', 'Schrute', 29, 'Male'),
    (1004, 'Angela', 'Martin', 31, 'Female'),
    (1005, 'Toby', 'Flenderson', 32, 'Male'),
    (1006, 'Michale', 'Scott', 35, 'Male'),
    (1007, 'Meredith', 'Palmer', 32, 'Female'),
    (1008, 'Stanley', 'Hudson', 38, 'Male'),
    (1009, 'Kevin', 'malone', 31, 'Male');
    
 select *
	from employeedemo.employeedemography;
    
SELECT FirstName, LastName
	FROM employeedemo.employeedemography;

-- ############## 	 "LIMIT"	##################
-- give top 5 rows and all columns from the employeedemography table:

select  *
	from employeedemo.employeedemography
   limit 5;
   
-- ##############		"DIUSTINCT"		#############
-- give the unique colum "EmployeeID" from the employeegraphy table:

select 
	distinct EmployeeID
	from employeedemo.employeedemography;
    
-- select gender from the gender column: 

select 
	distinct gender
        from employeedemo.employeedemography; 

-- ##############	 "COUNT"	######################
-- how many row for "lastname" are there in the empl,yeedemography table?

select 	
	count(lastname) as lastname_count
		from employeedemo.employeedemography;

-- ############# 	"MAX"	###############
-- what is the maximum saalry in the dataset?

select 
	max(salary) as max_salary
	from employeedemo.employeesalary;
    
-- ############# 	"MIN"	###############
-- what is the minimum saalry in the dataset?

select 
	min(salary) as min_salary
	from employeedemo.employeesalary;

-- ############# 	"AVG"	###############
-- what is the average saalry in the dataset?

select 
	avg(salary) as avg_salary
	from employeedemo.employeesalary;
    
-- #############		"WHERE"		###################
-- get the details of "Jim" from the empployeedemography..

-- ###########		"="		##############

select *
	from employeedemo.employeedemography
    where firstname = "Jim";

-- ###########		"!=" or "<>"		##############
-- get the details of all employee except "JIM" from the empployeedemography..

select *
	from employeedemo.employeedemography
    where firstname != "Jim";
-- ###############		"<>" for not equal to 	#########
select *
	from employeedemo.employeedemography
    where firstname <> "Jim";
    
-- get the details of the all employees who's age is more then 30?

select *
	from employeedemo.employeedemography
    where age > 30;

-- get the details of the all employees who's age is 30 or more then 30?

select *
	from employeedemo.employeedemography
    where age >= 30;

-- get the details of the all employees who's age is 32 or less then 32?

select *
	from employeedemo.employeedemography
    where age <= 32;
    
-- ################		"AND"		##################
-- get the details of employee who's age is 32 or less then 32 and gender is male..

select *
	from employeedemo.employeedemography
    where age <= 32 and gender = 'Male';
    
-- ###############		"LIKE"		#################
-- ###########		"S%"		##############
-- get the detils of the employee whose lastname is starts from "S" letter:

select *
	from employeedemo.employeedemography
    where lastname like "S%";

-- ###########		"%S%"		##############
-- get the detils of the employee who has "S" in-between the lastname:

select *
	from employeedemo.employeedemography
    where lastname like "%S%";

-- ###########		"S%o% 		##########
-- get the details of the employee whose lastname is starting from S 
-- and there is "o" in between the last name.

select * 
	from employeedemo.employeedemography
    where lastname like "S%o%";
    
-- ##########		"NULL" , "NOt Null"		#############
-- get the deatils firstname where data has null values

-- "NULL":
select *
	from employeedemo.employeedemography
    where firstname is null;
    
-- "NOT NULL":
select *
	from employeedemo.employeedemography
    where firstname is not null;
    
-- ##############		"IN"		##############
-- get the details of Jim and Michael using "IN" :

select *
	from employeedemo.employeedemography
    where firstname in ("JIM", 'Michale');
    
-- ##########		"GROUP BY" 	 	##########
-- group the gender from the employeedemography table:

select gender
	from employeedemo.employeedemography
    group by gender;

select *
		from employeedemo.employeedemography
        where firstname = 'Michale';

-- let's count the number of male and female employee:

select
	gender, Age, count(gender) as gender_count
		from employeedemo.employeedemography
        group by gender, Age;

-- ###########		"ORDER BY"		#################
-- get the employee details as per their age order from ascending order:

-- Ascending order:
select *
	from employeedemo.employeedemography
    order by age ;
-- descending order:
select *
	from employeedemo.employeedemography
    order by age desc ;



























