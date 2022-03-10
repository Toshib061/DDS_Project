SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- Select employee name under a manager of an user inputted department 

CREATE OR REPLACE PACKAGE Department AS
	PROCEDURE Find_name(B IN employee.department%TYPE);
END Department;
/	

CREATE OR REPLACE PACKAGE BODY Department AS
		
	PROCEDURE Find_name(B IN employee.department%TYPE)
	IS
	
	A employee.name%TYPE;
	BEGIN
		FOR R IN (select employee.name from employee join department_info@site1 on employee.department = department_info.department where 
		department_info.manager_name =  (select department_info.manager_name  from department_info@site1  where department_info.department=B) 
		and not employee.name = department_info.manager_name) LOOP
			A := R.name;
			DBMS_OUTPUT.PUT_LINE(A);	
			
		END LOOP;
			
		
	EXCEPTION
		WHEN TOO_MANY_ROWS THEN
			DBMS_OUTPUT.PUT_LINE('No data found');	
				
	END Find_name;

END Department;
/	
ACCEPT X CHAR PROMPT "Enter Department Name="
DECLARE
	A VARCHAR2(30);
BEGIN
	A :='&X';
	Department.Find_name(A);
END;
/