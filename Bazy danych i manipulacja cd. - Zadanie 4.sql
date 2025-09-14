
#1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
#2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS:

#ID
#Imię
#Nazwisko
#Wiek
#Kurs
  
#3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj.
UPDATE Pracownicy3
SET imie = null
WHERE id = 9;

UPDATE Pracownicy3
SET imie = null
WHERE id = 16;

SELECT*
FROM Pracownicy3;
  
#4. Wyświetl listę pracowników o Imieniu: Anna.

SELECT *
FROM Pracownicy3
WHERE imie = "Anna";

#5. Wyświetl listę pracowników z brakującą daną w kolumnie Imię.
SELECT *
FROM Pracownicy3
WHERE imie is null;
  
#6. Wyświetl kursy prowadzone przez pracowników w wieku od 30 lat do 40 lat.
SELECT kurs
FROM Pracownicy3
WHERE wiek >= 30 AND wiek <= 40;
  
#7. Wyświetl wiek pracowników z ID od 1 do 7.
SELECT wiek
FROM Pracownicy3
WHERE id BETWEEN 1 AND 7;
  
#8. Wyświetl listę pracowników z brakującymi danymi w kolumnie wiek.
SELECT *
FROM Pracownicy3
WHERE WIEK is null;
  
#9. Zmień nazwę kolumny „Kurs” na „Szkolenie”.
ALTER TABLE Pracownicy3
RENAME COLUMN Kurs TO Szkolenie;
