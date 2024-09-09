CREATE TABLE Student_INFO (
    RNo INT,
    Name VARCHAR(50),
    Branch VARCHAR(50),
    SPI DECIMAL(5, 2),
    Bklog INT
);
INSERT INTO Student_INFO (RNo, Name, Branch, SPI, Bklog) VALUES
(101, 'Raju', 'CE', 8.80, 0),
(102, 'Amit', 'CE', 2.20, 3),
(103, 'Sanjay', 'ME', 1.50, 6),
(104, 'Neha', 'EC', 7.65, 1),
(105, 'Meera', 'EE', 5.52, 2),
(106, 'Mahesh', 'EC', 4.50, 3);

--1. Create a view Personal with all columns.

create view Personal
as
select * from Student_INFO

--2. Create a view Student_Details having columns Name, Branch & SPI.

create view Student_Details
as
select Name, Branch, SPI from Student_INFO

select * from Student_Details

--3. Create a view AcademicData having columns RNo, Name, Branch.

create view AcademicData
as
select RNo, Name, Branch from Student_INFO

select * from AcademicData

--4. Create a view Student_bklog having all columns but students whose bklog more than 2.

create view Student_bklog
as
select * from Student_INFO
where Bklog > 2

select * from Student_bklog

--5. Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters.

create view Student_Pattern
as
select RNo, Name, Branch from Student_INFO
where name like '____'

select * from Student_Pattern

--6. Insert a new record to AcademicData view. (107, Meet, ME)

insert into AcademicData
values(107, 'Meet', 'ME');

select * from AcademicData

--7. Update the branch of Amit from CE to ME in Student_Details view.

update Student_Details
set branch = 'ME'
where Name = 'Amit'

select * from Student_Details

--8. Delete a student whose roll number is 104 from AcademicData view.delete from AcademicDatawhere RNo = 104select * from AcademicData------------------------------------------------------------------------------Part-B--------------------------------------------------------------------------------------------------1. Create a view that displays information of all students whose SPI is above 8.5

create view asdf
as
select * from Student_INFO
where SPI > 8.5

select * from asdf

--2. Create a view that displays 0 backlog students.

create view fdsa
as
select * from Student_INFO
where Bklog = 0

select * from fdsa

--3. Create a view Computerview that displays CE branch data only.create view Computerviewasselect * from Student_INFOwhere Branch = 'CE'select * from Computerview

------------------------------------------------------------------------------Part-C------------------------------------------------------------------------------------------------

--1. Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.

CREATE VIEW Result_EC AS
SELECT Name, SPI
FROM Student_INFO
WHERE Branch = 'EC' AND SPI < 5;

--2. Update the result of student MAHESH to 4.90 in Result_EC view.

UPDATE Student_INFO
SET SPI = 4.90
WHERE Name = 'Mahesh' AND Branch = 'EC';

--3. Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with ‘M’ and having bklogs more than 5.

CREATE VIEW Stu_Bklog AS
SELECT RNo, Name, Bklog
FROM Student_INFO
WHERE Name LIKE 'M%' AND Bklog > 5;

--4. Drop Computerview form the database

DROP VIEW Computerview;