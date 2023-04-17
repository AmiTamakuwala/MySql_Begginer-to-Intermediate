/*
##########	"UPDATE" & "DELETE"		#############

updating the data means if want same changes in our existing table...
like adding the null values, change the name, change the salary etc. 
we can use update command for that.
*/

select * 
	from emp_intermediate.profile;
    
-- QUS:    
-- there is a null value in empID.
-- update the null value from null to 1012.

update emp_intermediate.profile
	set EmpID = 1012
    where First_Name = 'Holly' and Last_Name = 'Flax';
		
        /*
		-- here, for update and delete program I did some changes in Edit and "Query" which is toolbar options.
		-- step-1:
			-- go to "Edit" --> "Preferences" --> "SQL Editor" --> unchecking safe updates --> "OK".
		-- Step-2:
			-- go to "Query" --> "Reconnect to Server"
		-- Step-3:
			-- execute program again.
        */
        
-- QUS:
-- update Age and Gender for empID = 1012, first name = Holly and last name = Falx:

update emp_intermediate.profile
	set Age = 31, gender = 'Female'
    where empid = 1012;

-- ###############		"DELETE"		##############
-- use "From" after "delete". 

-- QUS: 
-- delete the row where EmpID = 1005

delete from emp_intermediate.profile
	where EmpID = 1005;




















