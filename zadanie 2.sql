CREATE DATABASE School_Coding;

CREATE TABLE Mentors (
   id INTEGER, 
   name TEXT, 
   last_name TEXT,
   specialty TEXT,
   date_hired DATE,
   date_letgo DATE
);

SELECT*
FROM Mentors;

INSERT INTO Mentors (id, name, last_name, specialty, date_hired, date_letgo)
VALUES 
(1, "Ania", "Nowak", "IT", "2020-05-07", "2024-07-08"),
(2, "Pawel", "Sliwek", "Komp", "2019-08-07", "2021-09-15"),
(3, "Kasia", "Bys", "Data", "2005-06-02", "2010-06-18"),
(4, "Maria", "Polak", "IT", "2001-06-18", "2004-12-18"),
(5, "Adam", "Terenc", "Writer", "2003-03-20", "2010-09-28"),
(6, "Maciek", "Nowik", "Singer", "2015-09-23", "2020-10-06"),
(7, "Andrzej", "Rychard", "IT", "2009-11-05", "2021-06-05"),
(8, "Aneta", "Nowicka", "Writer", "2011-09-07", "2017-10-12"),
(9, "Sebastian", "Nowak", "IT", "2016-09-08", "2020-04-06"),
(10, "Pola", "Nowacka", "Singer", "2005-09-25", "2010-10-18");

UPDATE Mentors
SET last_name = "Nowicki"
WHERE id = 5;

UPDATE Mentors
SET specialty = "Singer"
WHERE id = 9;

ALTER TABLE Mentors
ADD Pay INTEGER NOT NULL;

UPDATE Mentors
SET pay = 1000
WHERE id = 1;

UPDATE Mentors
SET pay = 1000
WHERE id = 2;

UPDATE Mentors
SET pay = 1000
WHERE id = 3;
