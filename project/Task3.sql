SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- sack an employee based on his/her working output

CREATE OR REPLACE TRIGGER KICK
AFTER DELETE 
ON employee
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('An employer kicked.');
END;
/
CREATE OR REPLACE TRIGGER COME_BACK
AFTER UPDATE
OF vacation_spend 
ON working_info
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('One more chance!!!');
END;
/
DECLARE
	A VARCHAR2(20);
	B VARCHAR2(20);
BEGIN
	
	select employee.name into A from employee where employee.name =(select employee.name from employee join working_info on employee.id =working_info.id where working_info.vacation_spend > 7);
	select working_info.remarks into B from working_info join employee on employee.id = working_info.id where employee.name = A;
	IF B = 'good' THEN
		MERGE INTO working_info t1 USING employee t2 ON (t1.id = t2.id) WHEN MATCHED THEN  UPDATE SET t1.vacation_spend = 6;
	ELSE
		delete from employee where employee.name = A;
	END IF;
END;
/