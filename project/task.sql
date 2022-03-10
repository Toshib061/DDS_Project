SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- 

CREATE OR REPLACE PACKAGE Travel AS
	PROCEDURE Find_name(B IN EVENTS.event_date%TYPE);
END Travel;
/	

CREATE OR REPLACE PACKAGE BODY Travel AS
		
	PROCEDURE Find_name(B IN EVENTS.event_date%TYPE)
	IS
	
	A CUSTOMER.customer_name%TYPE;
	BEGIN
	DBMS_OUTPUT.PUT_LINE(B);
		FOR R IN (select CUSTOMER.customer_name from CUSTOMER join BOOKING on CUSTOMER.customer_id = BOOKING.customer_id where BOOKING.booking_id in  (select EVENTS.customer_id  from EVENTS  where EVENTS.event_date = B) ) LOOP
			A := R.customer_name;
			DBMS_OUTPUT.PUT_LINE(A);	
			
		END LOOP;
							
	END Find_name;

END Travel;
/	
ACCEPT X CHAR PROMPT "Enter Event Date="
DECLARE
	A VARCHAR2(30);
BEGIN
	A :='&X';
	Travel.Find_name(A);
END;
/