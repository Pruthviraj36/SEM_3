-- Create Stu_Info Table
CREATE TABLE Stu_Info (
    Rno INT PRIMARY KEY,  -- Adding PRIMARY KEY for unique identification
    Name VARCHAR(50),
    Branch VARCHAR(50)
);

-- Insert Data into Stu_Info
INSERT INTO Stu_Info (Rno, Name, Branch)
VALUES 
    (101, 'Raju', 'CE'),
    (102, 'Amit', 'CE'),
    (103, 'Sanjay', 'ME'),
    (104, 'Neha', 'EC'),
    (105, 'Meera', 'EE'),
    (106, 'Mahesh', 'ME');

-- Create Result Table
CREATE TABLE Result (
    Rno INT PRIMARY KEY,   -- Adding PRIMARY KEY for unique identification
    SPI DECIMAL(4, 2)
);

-- Insert Data into Result
INSERT INTO Result (Rno, SPI) VALUES
    (101, 8.80),
    (102, 9.20),
    (103, 7.60),
    (104, 8.20),
    (105, 7.00),
    (107, 8.90);

CREATE TABLE EMPLOYEE_MASTER (
    EmployeeNo VARCHAR(50) ,
    Name VARCHAR(50),
    ManagerNo VARCHAR(50)
);

INSERT INTO EMPLOYEE_MASTER(EmployeeNo, Name, ManagerNo)
VALUES 
    ('E01', 'Tarun', NULL),
    ('E02', 'Rohan', 'E02'),
    ('E03', 'Priya', 'E01'),
    ('E04', 'Milan', 'E03'),
    ('E05', 'Jay', 'E01'),
    ('E06', 'Anjana', 'E04');


-- 1. Combine information from student and result table using cross join or Cartesian product.
SELECT *
FROM Stu_Info si
CROSS JOIN Result r;

-- 2. Perform Inner Join on Student and Result Tables
SELECT
	si.Rno,
	si.Name,
	si.Branch,
	r.SPI
FROM Stu_Info si
INNER JOIN Result r ON si.Rno = r.Rno;

-- 3. Perform Left Outer Join on Student and Result Tables
SELECT
	si.Rno,
	si.Name,
	si.Branch,
	r.SPI
FROM Stu_Info si
LEFT OUTER JOIN Result r ON si.Rno = r.Rno;

-- 4. Perform Right Outer Join on Student and Result Tables
SELECT
	si.Rno,
	si.Name,
	si.Branch,
	r.SPI
FROM Stu_Info si
RIGHT OUTER JOIN Result r ON si.Rno = r.Rno;

-- 5. Perform Full Outer Join on Student and Result Tables
SELECT
	si.Rno,
	si.Name,
	si.Branch,
	r.SPI
FROM Stu_Info si
FULL OUTER JOIN Result r ON si.Rno = r.Rno;

-- 6. Display Rno, Name, Branch, and SPI of All Students
SELECT
	si.Rno,
	si.Name,
	si.Branch,
	r.SPI
FROM Stu_Info si
INNER JOIN Result r ON si.Rno = r.Rno;

-- 7. Display Rno, Name, Branch, and SPI of CE Branch’s Students Only
SELECT
	si.Rno,
	si.Name,
	si.Branch,
	r.SPI
FROM Stu_Info si
INNER JOIN Result r ON si.Rno = r.Rno
WHERE si.Branch = 'CE';

-- 8. Display Rno, Name, Branch, and SPI of Other Than EC Branch’s Students Only
SELECT
	si.Rno,
	si.Name,
	si.Branch,
	r.SPI
FROM Stu_Info si
INNER JOIN Result r ON si.Rno = r.Rno
WHERE si.Branch <> 'EC';

-- 9. Display Average SPI Result of Each Branch
SELECT
	si.Branch,
	AVG(r.SPI) AS Average_SPI
FROM Stu_Info si
INNER JOIN Result r ON si.Rno = r.Rno
GROUP BY si.Branch;

-- 10. Display Average SPI Result of CE and ME Branches in a Single Query
SELECT
	si.Branch,
	AVG(r.SPI) AS Average_SPI
FROM Stu_Info si
INNER JOIN Result r ON si.Rno = r.Rno
WHERE si.Branch IN ('CE', 'ME')
GROUP BY si.Branch;

------------------------------------------------------------------------------------
-- Part-B

-- 1. Display average result of each branch and sort them in ascending order by SPI
SELECT 
    si.Branch,
    AVG(r.SPI) AS Average_SPI
FROM Stu_Info si
INNER JOIN Result r ON si.Rno = r.Rno
GROUP BY si.Branch
ORDER BY Average_SPI ASC;

-- 2. Display highest SPI from each branch and sort them in descending order
SELECT 
    si.Branch,
    MAX(r.SPI) AS Highest_SPI
FROM Stu_Info si
INNER JOIN Result r ON si.Rno = r.Rno
GROUP BY si.Branch
ORDER BY Highest_SPI DESC;

------------------------------------------------------------------------------------
-- Part-C

-- 1. Retrieve the names of employees along with their manager’s name from the Employee table

SELECT 
    e.Name AS EmployeeName,
    m.Name AS ManagerName
FROM EMPLOYEE_MASTER e
INNER JOIN EMPLOYEE_MASTER m ON e.ManagerNo = m.EmployeeNo;