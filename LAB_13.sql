CREATE TABLE City (
    CityID INT PRIMARY KEY,
    Name VARCHAR(100) UNIQUE,
    Pincode INT NOT NULL,
    Remarks VARCHAR(255)
);

CREATE TABLE Village (
    VID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');

INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

-- PART-A

--1. Display all the villages of Rajkot city.
SELECT V.name
FROM Village V
JOIN City C ON C.CityID =  V.CityID
WHERE C.Name = 'Rajkot'

--2. Display city along with their villages & pin code.
SELECT V.Name, C.Pincode
FROM City C
JOIN Village V ON C.CityID = V.CityID

--3. Display the city having more than one village.
SELECT c.Name 
FROM CITY c 
JOIN VILLAGE v ON c.CityID = v.CityID 
GROUP BY c.CityID, c.Name
HAVING COUNT(v.VID) > 1;

--4. Display the city having no village.
SELECT c.Name 
FROM CITY c 
LEFT JOIN VILLAGE v ON c.CityID = v.CityID 
WHERE v.VID IS NULL;

--5. Count the total number of villages in each city.
SELECT C.Name, COUNT(V.CityID) AS NO_OF_VILLAGES
FROM City C
JOIN Village V ON V.CityID = C.CityID
GROUP BY C.Name

--6. Count the number of cities having more than one village.
SELECT COUNT(*) FROM CITY
WHERE CITYID IN
(SELECT c.CITYID
FROM City c
JOIN Village v ON c.CityID = v.CityID
GROUP BY c.CityID
HAVING COUNT(v.VID) > 1)

-- CONSTRAINS

CREATE TABLE STU_MASTER (
    Rno INT PRIMARY KEY,
    Name VARCHAR(100),
    Branch VARCHAR(50) DEFAULT 'General',
    SPI DECIMAL(3, 2) CHECK (SPI <= 10),
    Bklog INT CHECK (Bklog >= 0)
);

INSERT INTO STU_MASTER (Rno, Name, Branch, SPI, Bklog) VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 0),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', 'General', 4.50, 3);

--4. Try to update SPI of Raju from 8.80 to 12.
UPDATE STU_MASTER
SET SPI = 12
WHERE Name = 'Raju'

--5. Try to update Bklog of Neha from 0 to -1
UPDATE STU_MASTER
SET Bklog = -1
WHERE Name = 'Neha'


---------------------------

CREATE TABLE Dept_details (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL
);

CREATE TABLE City_details (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL
);

CREATE TABLE Emp_details (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    Experience INT CHECK (Experience >= 0),
    FOREIGN KEY (Did) REFERENCES Dept_details(Did),
    FOREIGN KEY (Cid) REFERENCES City_details(Cid)
);

-- Violation: Inserting into Dept_details with a null Dname
INSERT INTO Dept_details (Did, Dname) VALUES (1, NULL);

-- Violation: Inserting into City_details with a null Cname
INSERT INTO City_details (Cid, Cname) VALUES (1, NULL);

-- Violation: Inserting into Emp_details with a negative Salary
INSERT INTO Emp_details (Eid, Ename, Did, Cid, Salary, Experience) VALUES (1, 'John Doe', 1, 1, -5000.00, 5);

-- Violation: Inserting into Emp_details with a negative Experience
INSERT INTO Emp_details (Eid, Ename, Did, Cid, Salary, Experience) VALUES (2, 'Jane Smith', 1, 1, 3000.00, -1);

-- Violation: Inserting into Emp_details with a non-existent Did
INSERT INTO Emp_details (Eid, Ename, Did, Cid, Salary, Experience) VALUES (3, 'Sam Brown', 999, 1, 4000.00, 2);

-- Violation: Inserting into Emp_details with a non-existent Cid
INSERT INTO Emp_details (Eid, Ename, Did, Cid, Salary, Experience) VALUES (4, 'Lucy Green', 1, 999, 5000.00, 3);


----------------------------------------------

CREATE TABLE Dept_info (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL
);

CREATE TABLE City_info (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL,
    Did INT,
    FOREIGN KEY (Did) REFERENCES Dept_info(Did)
);

CREATE TABLE District (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL,
    Sid INT,
    FOREIGN KEY (Sid) REFERENCES State(Sid)
);

CREATE TABLE State (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(100) NOT NULL,
    Cid INT,
    FOREIGN KEY (Cid) REFERENCES City_info(Cid)
);

CREATE TABLE Country (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL
);

CREATE TABLE Emp_info (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    Experience INT CHECK (Experience >= 0),
    FOREIGN KEY (Did) REFERENCES Dept_info(Did),
    FOREIGN KEY (Cid) REFERENCES City_info(Cid)
);

-- Insert into Dept_info
INSERT INTO Dept_info (Did, Dname) VALUES (1, 'HR');
INSERT INTO Dept_info (Did, Dname) VALUES (2, 'IT');
INSERT INTO Dept_info (Did, Dname) VALUES (3, 'Finance');
INSERT INTO Dept_info (Did, Dname) VALUES (4, 'Marketing');
INSERT INTO Dept_info (Did, Dname) VALUES (5, 'Sales');

-- Insert into City_info
INSERT INTO City_info (Cid, Cname, Did) VALUES (1, 'New York', 1);
INSERT INTO City_info (Cid, Cname, Did) VALUES (2, 'Los Angeles', 2);
INSERT INTO City_info (Cid, Cname, Did) VALUES (3, 'Chicago', 3);
INSERT INTO City_info (Cid, Cname, Did) VALUES (4, 'Houston', 4);
INSERT INTO City_info (Cid, Cname, Did) VALUES (5, 'Phoenix', 5);

-- Insert into District
INSERT INTO District (Did, Dname, Sid) VALUES (1, 'Manhattan', 1);
INSERT INTO District (Did, Dname, Sid) VALUES (2, 'Beverly Hills', 2);
INSERT INTO District (Did, Dname, Sid) VALUES (3, 'Lincoln Park', 3);
INSERT INTO District (Did, Dname, Sid) VALUES (4, 'Midtown', 4);
INSERT INTO District (Did, Dname, Sid) VALUES (5, 'Downtown', 5);

-- Insert into State
INSERT INTO State (Sid, Sname, Cid) VALUES (1, 'New York', 1);
INSERT INTO State (Sid, Sname, Cid) VALUES (2, 'California', 2);
INSERT INTO State (Sid, Sname, Cid) VALUES (3, 'Illinois', 3);
INSERT INTO State (Sid, Sname, Cid) VALUES (4, 'Texas', 4);
INSERT INTO State (Sid, Sname, Cid) VALUES (5, 'Arizona', 5);

-- Insert into Country
INSERT INTO Country (Cid, Cname) VALUES (1, 'USA');
INSERT INTO Country (Cid, Cname) VALUES (2, 'Canada');
INSERT INTO Country (Cid, Cname) VALUES (3, 'Mexico');
INSERT INTO Country (Cid, Cname) VALUES (4, 'UK');
INSERT INTO Country (Cid, Cname) VALUES (5, 'Australia');

-- Insert into Emp_info
INSERT INTO Emp_info (Eid, Ename, Did, Cid, Salary, Experience) VALUES (1, 'Alice', 1, 1, 60000.00, 5);
INSERT INTO Emp_info (Eid, Ename, Did, Cid, Salary, Experience) VALUES (2, 'Bob', 2, 2, 75000.00, 7);
INSERT INTO Emp_info (Eid, Ename, Did, Cid, Salary, Experience) VALUES (3, 'Charlie', 3, 3, 50000.00, 3);
INSERT INTO Emp_info (Eid, Ename, Did, Cid, Salary, Experience) VALUES (4, 'David', 4, 4, 45000.00, 4);
INSERT INTO Emp_info (Eid, Ename, Did, Cid, Salary, Experience) VALUES (5, 'Eva', 5, 5, 80000.00, 6);


-- Violation: Insert with a null Dname
INSERT INTO Dept_info (Did, Dname) VALUES (6, NULL);

-- Violation: Insert with a negative Salary
INSERT INTO Emp_info (Eid, Ename, Did, Cid, Salary, Experience) VALUES (6, 'Test', 1, 1, -1000.00, 2);

-- Violation: Insert into Emp_info with a non-existent Did
INSERT INTO Emp_info (Eid, Ename, Did, Cid, Salary, Experience) VALUES (7, 'Invalid', 999, 1, 30000.00, 1);
