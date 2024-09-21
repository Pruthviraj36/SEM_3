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
SELECT COUNT(c.CityID)
FROM City c
JOIN Village v ON c.CityID = v.CityID
GROUP BY c.CityID
HAVING COUNT(v.VID) > 1