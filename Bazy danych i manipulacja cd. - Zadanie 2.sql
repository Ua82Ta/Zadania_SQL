#1 Stwórz Bazę Pracownicy/Jeżeli ją już masz, zaktualizuj wpisy w tabelach.
#2 Stwórz Tabelę Pracownicy z pięcioma kolumnami, a także dobierz i ustaw dla każdej CONSTRAINTS:

#ID
#Imię
#Nazwisko
#Wiek
#Kurs

CREATE DATABASE Pracownicy;

CREATE TABLE Pracownicy.Pracownicy2 (
   id INTEGER, 
   imie TEXT NOT NULL, 
   nazwisko TEXT,
   wiek INTEGER,
   kurs TEXT
);

USE Pracownicy;


#3. Każdą tabelę uzupełnij danymi z załącznika lub zaktualizuj.

INSERT INTO Pracownicy2 (id, imie, nazwisko, wiek, kurs)
VALUES 
(1, "Anna", "NOWAK",34,"DS."),
(2, "Roman", "KOWALSKI", 42, "DS."),
(3, "Tomasz", "WIŚNIEWSKI", 33, "DS."),
(4, "Agata", "WÓJCIK", 42, "DS."),
(5, "Elżbieta", "KOWALCZYK", 28, "Java"),
(6, "Przemysław", NULL, 34, "Java"),
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
(19, "Roman", NULL, 39, "Tester"),
(20, "Ewa", "WOŹNIAK", 31, "Tester");


SELECT*
FROM Pracownicy2;


  
#4. Wyświetl listę pracowników w wieku 28 lat.
SELECT *
FROM Pracownicy2
WHERE wiek = 28;
  
#5. Wyświetl listę pracowników w wieku 30 lat i młodszych.
SELECT *
FROM Pracownicy2
WHERE wiek <= 30;
  
#6. Wyświetl listę pracowników, których nazwisko zawiera „ski”.
SELECT *
FROM Pracownicy2
WHERE nazwisko LIKE "%ski";
  
#7. Wyświetl listę pracowników z ID: 1,4,7,18,20.
SELECT *
FROM Pracownicy2
WHERE id = 1
OR id = 4
OR id = 7
OR id = 18
OR id = 20;
  
#8. Wyświetl listę pracowników z wprowadzonymi kompletnymi danymi.
SELECT *
FROM Pracownicy2
WHERE id IS NOT NULL
AND imie IS NOT NULL
AND nazwisko IS NOT NULL
AND wiek IS NOT NULL
AND kurs IS NOT NULL;
  
#9. Wyświetl wszystkich pracowników, którzy nie prowadzą kursu DS
SELECT *
FROM Pracownicy2
WHERE kurs != "DS.";


