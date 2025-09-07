CREATE DATABASE DB_1;
USE DB_1;

CREATE TABLE Biblioteczka (
   id INTEGER, 
   title TEXT, 
   date_of_purchase DATE
);

SELECT*
FROM Biblioteczka;

INSERT INTO Biblioteczka (id, title, date_of_purchase)
VALUES (1, "Pokot", "2020-05-07");

INSERT INTO Biblioteczka (id, title, date_of_purchase)
VALUES (2, "Krzyzacy", "1999-07-08");

INSERT INTO Biblioteczka (id, title, date_of_purchase)
VALUES (3, "Dziady", "2000-08-09");

UPDATE Biblioteczka
SET title = "Potop"
WHERE id = 1;

ALTER TABLE Biblioteczka
ADD Author TEXT;

SELECT*
FROM Biblioteczka;

UPDATE Biblioteczka
SET Author = "Koscielny"
WHERE id = 1;

UPDATE Biblioteczka
SET Author = "Sienkiewicz"
WHERE id = 2;

UPDATE Biblioteczka
SET Author = "Mickiewicz"
WHERE id = 3;

DELETE FROM Biblioteczka
WHERE id = 2;

SELECT*
FROM Biblioteczka;
