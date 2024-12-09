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
-- 105 from deposit table.select cname, bname from depositwhere amount > 400 and actno < 105-- 13. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow
-- table. (AND & BETWEEN)select * from borrow where amount >= 300 and amount <= 8000select * from borrow where amount between 3000 and 8000-- 14. Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table.select * from depositwhere bname <> 'ANDHERI'-- 15. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’
-- Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table.

select actno, cname, amount from deposit
where bname in ('AJNI', 'KAROLBAGH', 'M.G.ROAD')


-- PART - B


-- 1. Display all the details of first five customers from deposit table.

select top 5 * from deposit
-- 2. Display all the details of first three depositors whose amount is greater than 1000.
-- 3. Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to ‘ANDHERI’ from borrow table.
-- 4. Retrieve all unique cities using DISTINCT. (Use Customers Table)
-- 5. Retrieve all unique branches using DISTINCT. (Use Branch Table)