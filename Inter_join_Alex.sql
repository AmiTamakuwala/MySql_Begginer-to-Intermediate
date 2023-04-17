
/*
insert 
	into profile values
		(1001, "Jim", "Halpert", 30, 'Male'),
		(1002, 'Pam' , 'Beasley', 30, 'Female'),
		(1003, 'Dwight', 'Schrute', 23, 'Male'),
		(1004, 'Angela', 'Martin', 31, 'Female'),
		(1005, 'Toby', 'Flenderson', 32, 'Male'),
		(1006, 'Michael', 'Scott', 35, 'Male'),
		(1007, 'Meredith', 'Palmer', 32, 'Female'),
		(1008, 'Stanley', 'Hudson', 38, 'Male'),
		(1009, 'Kevin', 'Malone', 31, 'Male');
        
insert 
	into salary values
		(1001, 'Salesman', 45000),
        (1002, 'Receptionist', 36000),
        (1003, 'Salesman', 63000),
        (1004, 'Accountant', 47000),
        (1005, 'HR', 50000),
        (1006, 'Regional Manager', 65000),
        (1007, 'Supplier Relations', 41000),
        (1008, 'Salesman', 48000),
        (1009, 'Accountant', 42000); 
*/

-- adding some columns in the Profile table:

insert 
	into profile values
    (1011, 'Ryan', 'Howard', 38, 'Male'),
    (Null, 'Holly', 'Flax', null, Null),
    (1013, 'Darryl', 'Philbin', Null, 'Male');
    
select *
	from emp_intermediate.profile;
    
insert 
	into salary values
    (1010, Null, 47000),
    (Null, 'Salesman', 43000);
    
select *
	from emp_intermediate.salary;

/*
##########		Intermediate		############
##########		"JOINS"		#################
-- joins: Inner joins, outer joins, left joins, right joins
*/

select * 
	from emp_intermediate.profile
		join emp_intermediate.salary	-- # Or we can use "inner join"
        on profile.EmpID = salary.EmpID;
        
        -- In inner joins only that data will apper.... 
        -- which has same rows and column in both tables with the help of commoan column.
        -- Inner join will not apper other daat which doesn't have the similar columns and rows.
       

-- ################		"LEFT JOIN"	OR "RIGHT JOIN"	#####################
-- Now let's check same statement with "Left join":

-- "LEFT JOIN":

select *
	from emp_intermediate.profile
		left join emp_intermediate.salary
        on profile.EmpID = salary.EmpID;
        
        /*
        -- Explanation:
        -- So, here we get the result of similar rows and column from both table
        -- [Left table: Profile & Right Table: Saalry].
		-- and from left table- "profile" we get the all rows along with left table.
        -- but not the data of right table.
        */
        
        
-- "RIGHT JOIN":

select *
	from emp_intermediate.profile
		right join emp_intermediate.salary
        on profile.EmpID = salary.EmpID;
        
        -- So, here we get the result of similar rows and column from both table
        -- [Left table: Profile & Right Table: Saalry].
		-- and from right table- "salary" we get the all rows along with left table.
        -- but not the data of left table.
        
/*      
-- ##############		 "UNION" not "OUTER JOIN":		##############
-- In MySql there is no "outer join" like SQL server:
-- for Full join we will use Left join and right join together with the help of "UNION" in one script. 
*/

-- "UNION":

select * 
	from emp_intermediate.profile
		left join emp_intermediate.salary
        on profile.EmpID = salary.EmpID
union
select *
	 from emp_intermediate.profile
		right join emp_intermediate.salary
        on profile.EmpID = salary.EmpID;
		
        -- As we can see the result for "UNION"....
        -- we get the all data once from left table and right table [all together]
        -- without repeating the left table and right table.
        
        -- but in "UNION ALL" result will be different...
        -- Let's check "UNION ALL"
        
-- ############		"UNION ALL" 		############

select * 
	from emp_intermediate.profile
		left join emp_intermediate.salary
        on profile.EmpID = salary.EmpID
union all
select *
	 from emp_intermediate.profile
		right join emp_intermediate.salary
        on profile.EmpID = salary.EmpID;
        
      -- EXPLANATION:
      -- as we see the result...
      -- in "UNION ALL" first we get the result from the left table....
      -- as we mention left join first,
      -- and after that we get the whole result of right table..
      -- so data is repeating for both table again in "UNION ALL".        
        
-- Let's go with specific columns from the left table and right table:
-- fetch the information of "empID", "First_Name", "Last_Name", "JOb_Title" and "Salary":

select
	profile.EmpID, First_Name, Last_Name, Job_Title, Salary
		from emp_intermediate.profile
			join emp_intermediate.salary
            on profile.EmpID = salary.EmpID;

-- ##############		"RIGHT JOIN"		############
-- fetch the same info with the "Right join"
-- Use profie table for EmpID column :

select
	profile.EmpID, First_Name, Last_Name, Job_Title, Salary
		from emp_intermediate.profile
			right join emp_intermediate.salary
            on profile.EmpID = salary.EmpID; 

-- Use salary table for EmpID column:
select
	salary.EmpID, First_Name, Last_Name, Job_Title, Salary
		from emp_intermediate.profile
			right join emp_intermediate.salary
            on profile.EmpID = salary.EmpID; 

-- #############		"LEFT JOIN"		#############        
-- fetch the same info with the "left join":
-- Use profie table for EmpID column :

select
	profile.EmpID, First_Name, Last_Name, Job_Title, Salary
		from emp_intermediate.profile
			left join emp_intermediate.salary
            on profile.EmpID = salary.EmpID;        
        
-- fetch the same info with the "left join":
-- Use salary table for EmpID column :

select
	salary.EmpID, First_Name, Last_Name, Job_Title, Salary
		from emp_intermediate.profile
			left join emp_intermediate.salary
            on profile.EmpID = salary.EmpID;        
            
-- get the "empID", "first name", "last name", and Salary from the bith table 
-- which has similar empID
-- expect 'Michael' info and 
-- get the salary in descednding order.alter

select 
	salary.EmpID, First_Name, Last_Name, Salary 
		from emp_intermediate.profile
			join emp_intermediate.salary
            on profile.EmpID = salary.EmpID
				where First_Name != 'Michael'
                order by salary desc;
            
-- get the salesman's avg salary using "inner join":


select 
	Job_title, avg(salary) as avg_salary
		from emp_intermediate.profile
			join emp_intermediate.salary
            on profile.EmpID = salary.EmpID
            where Job_Title = "Salesman";
            
-- ##########		create new table in emp_intermediate Schema:	########
-- New table name "Warehouse":
-- insert some info in warehouse table
/*
select * 
	from emp_intermediate.salary;
            
select * 
	from emp_intermediate.profile;            
*/

insert 
	into emp_intermediate.warehouse values
		(1013, 'Darryl', 'Philbin', NULL, 'Male'),
		(1050, 'Roy', 'Anderson', 31, 'Male'),
		(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
		(1052, 'Val', 'Johnson', 31, 'Female');
        
 -- ###########		"UNION"		###################
 
 select * 
	from emp_intermediate.profile
		left join emp_intermediate.warehouse
        on profile.EmpID = warehouse.EmpID
Union
select * 
	from emp_intermediate.profile
		right join emp_intermediate.warehouse
        on profile.EmpID = warehouse.EmpID;
            
-- without any joins let's run "UNION" only 
-- between two table[ profile & warehoouse]

-- "UNION":            
select * 
	from emp_intermediate.profile
			UNION
select * 
	from emp_intermediate.warehouse;
            
	-- without joins Union work as append program[In python]..
    -- like extend the row from the bottom.
	-- here, in "UNION" table will not give the same data 
    -- like empID 1013 in both table.
    -- but "UNION" only give onece information.

-- "UNION ALL":

select * 
	from emp_intermediate.profile
			UNION ALL
select * 
	from emp_intermediate.warehouse; 
            
         -- as we saw the union but in "UNION ALL" we get the whole data 
         -- from the both table:
         -- like here, EmpID is in both table so with the union all 
         -- we will get that info both time.

-- ############		 IMPORTANT: "UNION" VS. "UNION ALL"		#################
-- we will get the Duplicate in "UNION ALL" but ...
-- we don't get the duplicates in "UNION"           
            
select * 
	from emp_intermediate.profile
			UNION ALL
select * 
	from emp_intermediate.warehouse 
    order by EmpID;
            
            
-- "profile" and "salary" table use union and union all:

select 
	EmpID, First_name, Age
		from emp_intermediate.profile
			UNION ALL
select
	EmpID, Job_Title, Salary
		from emp_intermediate.salary
        order by EmpID;

		-- As we see this is not approprite to interpreat 
        -- as in Age column we get salary and age.
        -- column are not same in both table. 
        -- we can not use union or union all for profile and salary table. 

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        
        