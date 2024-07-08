select * from deposit

create table BORROW (
	loan_no int,
	cname varchar(50),
	vname varchar(50),
	amount decimal(8 ,2)
);


-- LOANNO CNAME    BNAME			AMOUNT
-- 201    ANIL     VRCE			1000.00
-- 206    MEHUL    AJNI			5000.00
-- 311    SUNIL    DHARAMPETH	3000.00
-- 321    MADHURI  ANDHERI		2000.00
-- 375    PRAMOD   VIRAR		8000.00
-- 481    KRANTI   NEHRU PLACE	3000.00 


insert into BORROW values
(201, 'ANIL', 'VRCE', 1000),
(206, 'MEHUL', 'AJNI', 5000),
(311, 'SUNIL', 'DHARAMPETH', 3000),
(321, 'MADHURI', 'ANDHERI', 2000),
(375, 'PRAMOD', 'VIRAR', 8000),
(481, 'KRANTI', 'NEHRU PLACE', 3000)

select * from borrow

select * from CUSTOMERS


-- LAB 2


-- 1. Retrieve all data from table DEPOSIT.

select * from deposit

-- 2. Retrieve all data from table BORROW. 

select * from BORROW

-- 3. Retrieve all data from table CUSTOMERS.

select * from CUSTOMERS

-- 4. Display Account No, Customer Name & Amount from DEPOSIT.

select actno, cname,amount from deposit

-- 5. Display Loan No, Amount from BORROW.

select loan_no, amount from BORROW

-- 6. Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table.

select * from BORROW 
where vname='ANDHERI'

-- 7. Give account no and amount of depositor, whose account no is equals to 106 from deposit table.

select actno, amount from deposit
where actno = 106

-- 8. Give name of borrowers having amount greater than 5000 from borrow table. 

Select cname from BORROW where amount = 5000

-- 9. Give name of customers who opened account after date '1-12-96' from deposit table. 

select cname from deposit
where adate > '1996-12-1'

-- 10.Display name of customers whose account no is less than 105 from deposit table.

select cname from deposit where actno < 105

-- 11. Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN)

select cname from CUSTOMERS 
where CITY = 'NAGPUR' OR CITY = 'DELHI'

select cname from CUSTOMERS 
where CITY IN ('NAGPUR', 'DELHI')

-- 12. Display name of customers with branch whose amount is greater than 4000 and account no is less than
-- 105 from deposit table.

select cname, bname from deposit
where amount > 400 and actno < 105

-- 13. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow
-- table. (AND & BETWEEN)

select * from borrow 
where amount >= 300 and amount <= 8000

select * from borrow 
where amount between 3000 and 8000

-- 14. Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table.

select * from deposit
where bname <> 'ANDHERI'

-- 15. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’
-- Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.

select actno, cname, amount from deposit
where bname in ('AJNI', 'KAROLBAGH', 'M.G.ROAD')


-- PART - B


-- 1. Display all the details of first five customers from deposit table.

select top 5 * from deposit

-- 2. Display all the details of first three depositors whose amount is greater than 1000.

select top 3 * from deposit where amount > 1000

-- 3. Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’ from borrow table.

select  top 5 loan_no, cname from BORROW
-- 4. Retrieve all unique cities using DISTINCT. (Use Customers Table)
-- 5. Retrieve all unique branches using DISTINCT. (Use Branch Table)


-- Lab-3
drop table CRICKET
create table CRICKET(
	NAME VARCHAR(20),
	CITY VARCHAR(10),
	AGE INT
);

INSERT INTO CRICKET VALUES
('Sachin Tendulkar', 'Mumbai', 30),
('Rahul Dravid', 'Bombay', 35),
('M.S.Dhoni', 'Jharkhand', 31),
('Suresh Raina', 'Gujarat', 30)

--1. Create table Worldcup from cricket with all the columns and data.
drop table WORLDCUP
SELECT * INTO WORLDCUP FROM CRICKET

SELECT * FROM WORLDCUP

--2. Create table T20 from cricket with first two columns with no data.

DROP TABLE T20
SELECT NAME, CITY INTO T20 FROM CRICKET WHERE 1=0

SELECT * FROM T20

--3. Create table IPL From Cricket with No Data
drop table IPL
SELECT * INTO IPL FROM CRICKET WHERE 1=0

SELECT * FROM IPL

--------------------------------------------------------------PART-B----------------------------------------------------------------

--EMPLOYEE
--	Name		City	Age
--	Jay Patel	Rajkot	30
--	Rahul Dave	Baroda	35
--	Jeet Patel	Surat	31
--	Vijay Raval	Rajkot	30
drop table EMPLOYEE
CREATE TABLE EMPLOYEE(
	NAME VARCHAR(20),
	CITY VARCHAR(10),
	AGE INT
);

INSERT INTO EMPLOYEE VALUES
('Jay Patel', 'Rajkot', 30),
('Rahul Dave', 'Baroda', 35),
('Jeet Patel', 'Surat', 31),
('Vijay Raval', 'Rajkot', 30)

--1. Create table Employee_detail from Employee with all the columns and data.
drop table Employee_detail
SELECT * INTO Employee_detail FROM EMPLOYEE

--2. Create table Employee_data from Employee with first two columns with no data.
drop table Employee_data
SELECT NAME, CITY INTO Employee_data from EMPLOYEE WHERE 1=0

--3. Create table Employee_info from Employee with no Data
drop table Employee_info
SELECT * INTO Employee_info from EMPLOYEE WHERE 1=0

---------------------------------------------------------------PART-C--------------------------------------------------------------------------------

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot

INSERT INTO Employee_info SELECT * FROM EMPLOYEE WHERE CITY='RAJKOT'

--2. Insert the Data into Employee_info from Employee whose age is more than 32.

INSERT INTO Employee_info SELECT * FROM EMPLOYEE WHERE AGE>32

---------------------------------------------------------------UPDATE--------------------------------------------------------------------------------

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)

UPDATE deposit
SET amount=5000
WHERE amount=3000

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)

UPDATE deposit
SET bname='C.G.ROAD'
WHERE cname='ANIL'

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)

UPDATE deposit
SET actno=111, amount=5000
WHERE cname='SANDIP'

--4. Update amount of KRANTI to 7000. (Use Deposit Table)

UPDATE deposit
SET amount=7000
WHERE cname='KRANTI'

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)

UPDATE deposit
SET bname='ANDHERI WEST'
WHERE bname='ANDHERI'

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)

UPDATE deposit
SET bname='NEHRU PALACE'
WHERE cname='MEHUL'

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit)

UPDATE deposit
SET amount=5000
WHERE actno between 101 and 107

--Table)
--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)

UPDATE deposit
SET adate='1995-4-1'
WHERE cname='ANIL'

--9. Update the amount of MINU to 10000. (Use Deposit Table)

UPDATE deposit
SET amount=10000
WHERE cname='MINU'

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)

UPDATE deposit
SET amount=5000, adate='1996-4-1'
WHERE cname='PRAMOD'

SELECT * FROM deposit

---------------------------------------------------------------PART-B--------------------------------------------------------------------------------

--1. Give 10% Increment in Loan Amount. (Use Borrow Table)


--2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)

-----------------------------------------------------------------LAB-4-------------------------------------------------------------------------------------

-----------------------------------------------------------------PART-A------------------------------------------------------------------------------------

--1. Add two more columns City VARCHAR (20) and Pincode INT.

ALTER TABLE deposit ADD CITY VARCHAR(20), PINCODE INT

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).

ALTER TABLE DEPOSIT ALTER COLUMN CNAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in amount Column.

ALTER TABLE DEPOSIT ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO.

EXEC SP_RENAME 'DEPOSIT.ACTNO', 'ANO';

--5. Delete Column City from the DEPOSIT table.

ALTER TABLE DEPOSIT DROP COLUMN CITY

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.

EXEC SP_RENAME DEPOSIT, DEPOSIT_DETAIL

SELECT * FROM DEPOSIT_DETAIL

-----------------------------------------------------------------PART-B----------------------------------------------------------------------------------------

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.

EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE', 'AOPENDATE'; 

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.

ALTER TABLE DEPOSIT_DETAIL DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName.

EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME', 'CustomerName'; 

--------------------------------------------------DELETE, Truncate, Drop Operation----------------------------------------------------------------------------

--------------------------------------------------------------PART-A----------------------------------------------------------------------------------------

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.

DELETE FROM  DEPOSIT_DETAIL WHERE AMOUNT >= 4000

--2. Delete all the accounts from CHANDI BRANCH.

DELETE FROM DEPOSIT_DETAIL WHERE BNAME = 'CHANDI'

--3. Delete all the accounts having account number (ANO) is greater than 105.

DELETE FROM DEPOSIT_DETAIL WHERE ANO > 105

--4. Delete all the records of Deposit_Detail table. (Use Truncate)

TRUNCATE TABLE DEPOSIT_DETAIL

--5. Remove Deposit_Detail table. (Use Drop)

DROP TABLE DEPOSIT_DETAIL

----------------------------------------------------------------------PART-B--------------------------------------------------------------------------------

CREATE TABLE EMPLOYEE_MASTER(
	EmpNo INT,
	EmpName VARCHAR(25),
	JoiningDate DATETIME,
	Salary DECIMAL (8,2),
	City VARCHAR(20)
);

INSERT INTO EMPLOYEE_MASTER VALUES 
(101, 'Keyur', '2002-1-5', 12000.00, 'Rajkot'),
(102, 'Hardik', '2004-2-15', 14000.00, 'Ahmedabad'),
(103, 'Kajal', '2006-3-14', 15000.00, 'Baroda'),
(104, 'Bhoomi', '2005-3-23', 12500.00, 'Ahmedabad'),
(105, 'Harmit', '2004-2-15', 14000.00, 'Rajkot'),
(106, 'Mitesh', '2001-9-25', 5000.00, 'Jamnagar'),
(107, 'Meera', Null, 7000.00, 'Morbi'),
(108, 'Kishan', '2003-2-6', 10000.00, NULL)

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.

DELETE FROM  Employee_MASTER WHERE Salary >= 14000
SELECT * FROM Employee_MASTER

--2. Delete all the Employees who belongs to ‘RAJKOT’ city.

DELETE FROM  Employee_MASTER WHERE city = 'RAJKOT'
SELECT * FROM Employee_MASTER

--3. Delete all the Employees who joined after 1-1-2007.

DELETE FROM  Employee_MASTER WHERE JoiningDate > '2007-1-1'
SELECT * FROM Employee_MASTER

--4. Delete the records of Employees whose joining date is null and Name is not null.

DELETE FROM  Employee_MASTER WHERE JoiningDate IS NULL AND  EmpName != NULL
SELECT * FROM Employee_MASTER

--5. Delete the records of Employees whose salary is 50% of 20000.

DELETE FROM  Employee_MASTER WHERE Salary = (50*200)
SELECT * FROM Employee_MASTER

--6. Delete the records of Employees whose City Name is not empty.

DELETE FROM  Employee_MASTER WHERE City != NULL
SELECT * FROM Employee_MASTER

--7. Delete all the records of Employee_MASTER table. (Use Truncate)

TRUNCATE TABLE Employee_MASTER

--8. Remove Employee_MASTER table. (Use Drop)

DROP TABLE Employee_MASTER
