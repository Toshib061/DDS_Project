SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- Select avg salary of an employee of a department which comes from user input

CREATE OR REPLACE PACKAGE mypackage AS 
	FUNCTION Aver(A IN employee.department%TYPE)
    RETURN NUMBER;
	
	 
END mypackage;
/

CREATE OR REPLACE PACKAGE BODY mypackage AS
	
	FUNCTION Aver(A IN employee.department%TYPE)
	RETURN NUMBER
	IS
	
	B NUMBER;
	
	BEGIN
	select avg(salary_info.salary) as avg_dept_sal into B from salary_info@site1 join employee on employee.id = salary_info.id join department_info@site1 on employee.department = department_info.department where employee.department = A;
	return B;
    END;
	
	
END mypackage;
/

ACCEPT X CHAR PROMPT "Enter Department name:";

DECLARE
	dep employee.department%TYPE;
	sal number;
BEGIN
	dep := '&X';
	sal := mypackage.Aver(dep);
	DBMS_OUTPUT.PUT_LINE(sal);	

END;
/