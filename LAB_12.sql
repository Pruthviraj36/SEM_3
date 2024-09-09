-- Create DEPT Table
CREATE TABLE DEPT (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

-- Insert sample data into DEPT Table
INSERT INTO DEPT (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');

-- Create PERSON Table
CREATE TABLE PERSON (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT FOREIGN KEY REFERENCES DEPT(DepartmentID) NULL,
    Salary DECIMAL(8, 2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL
);

-- Insert sample data into PERSON Table
INSERT INTO PERSON (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');


-- Part A

-- 1. Find all persons with their department name & code.
SELECT P.PersonName, D.DepartmentName, D.DepartmentCode
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID;

-- 2. Find the person's name whose department is in C-Block.
SELECT P.PersonName
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE D.Location = 'C-Block';

-- 3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT P.PersonName, P.Salary, D.DepartmentName
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE P.City = 'Jamnagar';

-- 4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT P.PersonName, P.Salary, D.DepartmentName
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE P.City <> 'Rajkot';

-- 5. Retrieve person�s name of the person who joined the Civil department after 1-Aug-2001.
SELECT P.PersonName
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Civil' AND P.JoiningDate > '2001-08-01';

-- 6. Find details of all persons who belong to the computer department.
SELECT P.*
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Computer';

-- 7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
SELECT P.PersonName, D.DepartmentName
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
WHERE DATEDIFF(DAY, P.JoiningDate, GETDATE()) > 365;

-- 8. Find department wise person counts.
SELECT D.DepartmentName, COUNT(P.PersonID) AS PersonCount
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName;

-- 9. Give department wise maximum & minimum salary with department name.
SELECT D.DepartmentName, 
       MAX(P.Salary) AS MaxSalary, 
       MIN(P.Salary) AS MinSalary
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName;

-- 10. Find city wise total, average, maximum and minimum salary.
SELECT P.City, 
       SUM(P.Salary) AS TotalSalary, 
       AVG(P.Salary) AS AverageSalary, 
       MAX(P.Salary) AS MaxSalary, 
       MIN(P.Salary) AS MinSalary
FROM PERSON P
GROUP BY P.City;

-- 11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(P.Salary) AS AverageSalary
FROM PERSON P
WHERE P.City = 'Ahmedabad';

-- 12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department.
SELECT CONCAT(P.PersonName, ' lives in ', P.City, ' and works in ', D.DepartmentName, ' Department.') AS PersonDetails
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID;

-- Part B (assuming it's meant to list all person names)

-- 1. Produce Output Like: <PersonName>
SELECT P.PersonName
FROM PERSON P;
