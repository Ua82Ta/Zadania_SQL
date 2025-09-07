#Załóż bazę o nazwie: Lista Pracowników;
CREATE DATABASE Lista_Pracownikow;

USE Lista_Pracownikow;
#. Załóż tabelę o nazwie: Pracownicy i utwórz 5 kolumn, a także dobierz i ustaw dla każdej constraints:
CREATE TABLE Pracownicy (
   id INTEGER PRIMARY KEY, 
   name_ TEXT NOT NULL, 
   last_name TEXT NOT NULL,
   position TEXT NOT NULL,
   department TEXT NOT NULL
);

SELECT*
FROM my_db.Pracownicy;

#  Wprowadź dane osób kilku, z którymi pracujesz w Swojej firmie. Każda pozycja ma mieć wypełnione wszystkie dane zgodnie z wymaganiem.
INSERT INTO my_db.Pracownicy (id, name_, last_name, position, department)
VALUES 
(1, "Ania", "Nowak", "Asystentka", "IT"),
(2, "Pawel", "Stasic", "Developer", "IT"),
(3, "Kasia", "Kuna", "Editor", "Legal"),
(4, "Maria", "Miki", "Tester", "TestT"),
(5, "Adam", "Pastor", "Lead", "TestT");

# Sprawdź, czy wszystkie dane wyświetlają się prawidłowo.
SELECT*
FROM my_db.Pracownicy;

# Dodaj kolumnę: Data zatrudnienia.
ALTER TABLE my_db.Pracownicy
ADD COLUMN Date_employed DATE;

#Dodaj nowego pracownika uzupełniając wszystkie dane.
INSERT INTO my_db.Pracownicy (id, name_, last_name, position, department, Date_employed)
VALUES 
(6, "Maria", "Sowik", "Writer", "Legal", "2025-04-25");

# Sprawdź, czy dane zostały zmienione, wyświetlając wszystkie pozycje.
SELECT*
FROM my_db.Pracownicy;

 #  Uzupełnij wszystkie brakujące dane w kolumnie o nazwie Data Zatrudnienia.
UPDATE my_db.Pracownicy
SET Date_employed = "2025-08-06"
WHERE id = 1;

UPDATE my_db.Pracownicy
SET Date_employed = "2024-08-06"
WHERE id = 2;

UPDATE my_db.Pracownicy
SET Date_employed = "2019-05-16"
WHERE id = 3;

UPDATE my_db.Pracownicy
SET Date_employed = "2005-11-18"
WHERE id = 4;

UPDATE my_db.Pracownicy
SET Date_employed = "2020-10-12"
WHERE id = 5;

SELECT*
FROM my_db.Pracownicy;
