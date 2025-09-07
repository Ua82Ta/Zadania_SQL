CREATE DATABASE Lista_prezentow;

CREATE TABLE Prezenty_2020 (
   id INTEGER, 
   Imie_obdarowanego TEXT NOT NULL, 
   pomysl_na_prezent TEXT NOT NULL,
   cena INTEGER DEFAULT 50,
   miejsce_zakupu TEXT NOT NULL
);

SELECT *
FROM Prezenty_2020;

INSERT INTO Prezenty_2020 (id, Imie_obdarowanego, pomysl_na_prezent, cena, miejsce_zakupu)
VALUES 
(1, "Ania", "Myszka", 200, "Empik"),
(2, "Pawel", "Kabel", 100, "Empik"),
(3, "Kasia", "Monitor", 350, "Empik"),
(4, "Maria", "Podkladka", 50, "Empik"),
(5, "Adam", "Klawiatura", 150, "Empik");

UPDATE Prezenty_2020
SET pomysl_na_prezent = "Rower"
WHERE id = 3;

DELETE FROM Prezenty_2020
WHERE id = 1;

ALTER TABLE Prezenty_2020
DROP COLUMN miejsce_zakupu;

SELECT *
FROM Prezenty_2020
WHERE id > 2;
