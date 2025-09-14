#1. Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
#2. Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS:

#ID
#Imię
#Nazwisko
#Wiek
#Kurs

CREATE DATABASE Pracownicy;

CREATE TABLE Pracownicy.Pracownicy3 (
   id INTEGER, 
   imie TEXT, 
   nazwisko TEXT,
   wiek INTEGER,
   kurs TEXT
);

USE Pracownicy;

#3. Każdą tabelę uzupełnij danymi z załącznika, lub zaktualizuj.
INSERT INTO Pracownicy3 (id, imie, nazwisko, wiek, kurs)
VALUES 
(1, "Anna", "NOWAK",34,"DS."),
(2, "Roman", "KOWALSKI", 42, "DS."),
(3, "Tomasz", "WIŚNIEWSKI", 33, "DS."),
(4, "Agata", "WÓJCIK", 42, "DS."),
(5, "Elżbieta", "KOWALCZYK", 28, "Java"),
(6, "Przemysław", "KOWALCZYK", 34, "Java"),
(7, "Robert", "LEWANDOWSKI", 35, "Java"),
(8, "Radosław", "ZIELIŃSKI", 38, "Java"),
(9, "Anna", "WOŹNIAK", 26, "Java"),
(10, "Robert", "SZYMAŃSKI", 34, "Java"),
(11, "Radosław", "DĄBROWSKI", 35, NULL),
(12, "Robert", "KOZŁOWSKI", NULL, "UX"),
(13, "Joanna", "MAZUR", 26, "UX"),
(14, "Radosław", "JANKOWSKI", 27, "UX"),
(15, "Patryk", "LEWANDOWSKI", 28, "Tester"),
(16, "Patryk", "ZIELIŃSKI", 28, "Tester"),
(17, "Andrzej", "WOŹNIAK", 31, "Tester"),
(18, "Andrze", "LEWANDOWSKI", 30, "Tester"),
(19, "Roman", "KOWALCZYK", 39, "Tester"),
(20, "Ewa", "WOŹNIAK", 31, "Tester");

SELECT*
FROM Pracownicy3;
  
#4. Wyświetl listę pracowników o Nazwisku: KOWALCZYK.
SELECT *
FROM Pracownicy3
WHERE nazwisko = "Kowalczyk";


  
#5. Wyświetl listę pracowników w wieku od 30 lat do 40 lat.
SELECT *
FROM Pracownicy3
WHERE wiek >= 30 AND wiek <= 40;

  
#6. Wyświetl listę pracowników, których nazwisko nie zawiera „and”.
SELECT *
FROM Pracownicy3
WHERE nazwisko not like "%and%";
  
#7. Wyświetl listę pracowników z ID od 1 do 7.
SELECT *
FROM Pracownicy3
WHERE id BETWEEN 1 AND 7;
  
#8. Wyświetl listę pracowników z brakującymi danymi.
SELECT *
FROM Pracownicy3
WHERE id IS NULL
OR imie IS NULL
OR nazwisko IS NULL
OR wiek IS NULL
OR kurs IS NULL;
  
#9. Wyświetl wszystkich pracowników, którzy nie prowadzą żadnego kursu.
SELECT *
FROM Pracownicy3
WHERE kurs IS NULL;

  
  
