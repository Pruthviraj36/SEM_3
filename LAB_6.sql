--	Part-A

-- 1. Display the result of 5 multiply by 30.
SELECT 5 * 30 AS result;

-- 2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25) AS abs_25, ABS(25) AS abs_25, ABS(-50) AS abs_50, ABS(50) AS abs_50;

-- 3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2) AS ceil_25_2, CEILING(25.7) AS ceil_25_7, CEILING(-25.2) AS ceil_neg_25_2;

-- 4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2) AS floor_25_2, FLOOR(25.7) AS floor_25_7, FLOOR(-25.2) AS floor_neg_25_2;

-- 5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5 % 2 AS remainder_5_2, 5 % 3 AS remainder_5_3;

-- 6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3, 2) AS power_3_2, POWER(4, 3) AS power_4_3;

-- 7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25) AS sqrt_25, SQRT(30) AS sqrt_30, SQRT(50) AS sqrt_50;

-- 8. Find out the square of 5, 15, and 25.
SELECT POWER(5, 2) AS square_5, POWER(15, 2) AS square_15, POWER(25, 2) AS square_25;

--9. Find out the value of PI.
SELECT PI() AS ValueOfPI;

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT 
  ROUND(157.732, 2) AS RoundedTo2Decimals,
  ROUND(157.732, 0) AS RoundedTo0Decimals,
  ROUND(157.732, -2) AS RoundedToNegative2Decimals;

--11. Find out exponential value of 2 and 3.
SELECT 
  EXP(2) AS ExponentialOf2,
  EXP(3) AS ExponentialOf3;

--12. Find out logarithm having base e of 10 and 2.
SELECT
  LOG(10) AS NaturalLogOf10,
  LOG(2) AS NaturalLogOf2;

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT 
  LOG10(5) AS LogBase10Of5,
  LOG10(10) AS LogBase10Of100;

--14. Find sine, cosine and tangent of 3.1415.
SELECT 
  SIN(3.1415) AS SineOfPi,
  COS(3.1415) AS CosineOfPi,
  TAN(3.1415) AS TangentOfPi;

--15. Find sign of -25, 0 and 25.
SELECT 
  SIGN(-25) AS SignOfNegative25,
  SIGN(0) AS SignOf0,
  SIGN(25) AS SignOf25;

--16. Generate random number using function
SELECT RAND() AS RandomNumber;

--	Part-B
--Create and Insert the following records in the EMP_MASTER table

DROP TABLE EMP_MASTER
CREATE TABLE EMP_MASTER(
	EmpNo INT,
	EmpName VARCHAR(25),
	JoiningDate DATE,
	Salary DECIMAL(7, 2),
	Commission INT,
	City VARCHAR(50),
	Dept_Code VARCHAR(50)
);


INSERT INTO EMP_MASTER VALUES
(101, 'Keyur', '2000-01-05', 12000.00, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '2004-02-15', 14000.00, 2500, 'Ahmedabad', '3@'),
(103, 'Kajal', '2006-03-14', 15000.00, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 1000, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '2004-02-15', 14000.00, 2000, 'Rajkot', '312A');

--1. Display the result of Salary plus Commission.
--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
--4. Find out remainder of 55 divided 2 and 55 divided by 3.
--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power


------------------------------------------------------------------------------STRING FUNCTIONS----------------------------------------------------------------------------------------
--	PART-A
--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT
	LEN(NULL),
	LEN('hello'),
	LEN('blank');
--2. Display your name in lower & upper case.
SELECT
	UPPER('CHAUHAN PRUTHVIRAJ'),
	LOWER('CHAUHAN PRUTHVIRAJ');
--3. Display first three characters of your name.
SELECT
	LEFT('CHAUHAN PRUTHVIRAJ', 3)
	--RIGHT('CHAUHAN PRUTHVIRAJ', );
--4. Display 3rd to 10th character of your name.
SELECT
	SUBSTRING('CHAUHAN PRUTHVIRAJ', 3, 10);
--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT
	REPLACE('abc123efg', 'abc123efg','abcXYZefg'),
	REPLACE('abcabcabc', 'abcabcabc','ab5ab5ab5')
--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT
	ASCII('a'),
	ASCII('A'),
	ASCII('z'),
	ASCII('Z'),
	ASCII('0'),
	ASCII('9');
--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT
	CHAR(97),
	CHAR(65),
	CHAR(122),
	CHAR(90),
	CHAR(48),
	CHAR(57);
--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT
	LTRIM('     hello world');
--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT
	RTRIM('hello world      ');
--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT
	LEFT('SQL Server', 4),
	RIGHT('SQL Server', 5);
--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT
	CAST('123.45' AS decimal(10, 2));
--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT
	CAST(10.58 AS INT);
--13. Put 10 space before your name using function.
SELECT
	SPACE(10) + 'PRUTHVIRAJ';
--14. Combine two strings using + sign as well as CONCAT ().
SELECT
	CONCAT('CHAUHAN', ' PRUTHVIRAJ'),
	'CHAUHAN'+' PRUTHVIRAJ';
--15. Find reverse of “Darshan”.
SELECT
	REVERSE('Darshan');
--16. Repeat your name 3 times.
SELECT
	REPLICATE('CHAUHAN', 3);

--Date Functions
--Part – A:
--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT
	GETDATE();
--2. Write a query to find new date after 365 day with reference to today.
SELECT
	DATEADD(YEAR, 1, GETDATE());
--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT
	CONVERT(VARCHAR, GETDATE(), 100);
--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT
	CONVERT(VARCHAR, GETDATE(), 13);
--5. Display the current date in a format that appears as Jan 04, 96.
SELECT
	CONVERT(VARCHAR, GETDATE(), 7);
--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT
	DATEDIFF(MM, '31-Dec-2008', '31-Mar-2009');
--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT
	DATEDIFF(yy, '14-Sep-10', '25-Jan-12');
--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT
	DATEDIFF(HH, '25-Jan-12 7:00', '26-Jan-12 10:30');
--9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT
	DATEPART(dd, '12-May-16'),
	DATEPART(MM, '12-May-16'),
	DATEPART(yy, '12-May-16');
--10. Write a query that adds 5 years to current date.
SELECT
	DATEADD(yy, 5, GETDATE());
--11. Write a query to subtract 2 months from current date.
SELECT
	DATEADD(MM, -2, GETDATE());
--12. Extract month from current date using datename () and datepart () function.
SELECT
	DATENAME(MM, GETDATE()),
	DATEPART(MM, GETDATE());
--13. Write a query to find out last date of current month.
SELECT
	EOMONTH(GETDATE());
--14. Calculate your age in years and months.
SELECT
	DATEDIFF(yy, '24-Dec-05', GETDATE());
