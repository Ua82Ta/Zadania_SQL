#1. Załóż bazę o nazwie: Moje zainteresowania.
CREATE DATABASE Moje_zainteresowania;

#2. Załóż tabelę o nazwie: Zainteresowania i utwórz 4 kolumny, a także dobierz i ustaw dla każdej CONSTRAINTS:
#ID
#Nazwa 
#Opis
#Data realizacji

CREATE TABLE Zainteresowania (
   id INTEGER, 
   nazwa TEXT NOT NULL, 
   opis TEXT NOT NULL,
   data_realizacji DATE
);

#3. Wprowadź dane tylko dla kolumn: Nazwa i Opis. (Min 5 pozycji)
INSERT INTO Zainteresowania (Nazwa, Opis)
VALUES 
("Pisanie", "Pisanie wierszy"),
("Jazda konno", "Jazda konno"),
("Rower", "Jazda na rowerze"),
("Malowanie", "Malowanie obrazow"),
("Spiewanie", "Spiewanie operowe");


#4. Sprawdź, czy wszystkie dane wyświetlają się prawidłowo i co pojawia się w kolumnie ID i Data realizacji.
SELECT*
FROM Zainteresowania;

#5. Dodaj nową pozycję wypełniając wszystkie dane.
INSERT INTO Zainteresowania (id, Nazwa, Opis, Data_realizacji)
VALUES 
(6,"Samoloty", "Latanie", "2011-10-24");

SET SQL_SAFE_UPDATES = 0;

#6. Dodaj brakujące dane dla wiersza 4.
UPDATE Zainteresowania
SET Data_realizacji = "2025-08-06"
WHERE nazwa = "Malowanie";

UPDATE Zainteresowania
SET ID = 4
WHERE nazwa = "Malowanie";

#7. Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
SELECT*
FROM Zainteresowania;


#8. Usuń wszystkie wiersze, w których jakaś z pozycji jest pusta.
DELETE FROM Zainteresowania
WHERE id IS NULL OR data_realizacji IS NULL;

#9. Sprawdź, czy dane zostały zmienione, wyświetlając je.
SELECT*
FROM Zainteresowania;
