# Stwórz Bazę „Sklep odzieżowy”

CREATE DATABASE Sklep_Odziezowy;
USE Sklep_Odziezowy;

# Utwórz tabelę „Producenci” z kolumnami:
# id producenta
# nazwa producenta
# adres producenta
# nip producenta
# data podpisania umowy z producentem
# Do każdej kolumny ustaw odpowiedni „constraint”

CREATE TABLE Producenci (
	ID_Producenta INT PRIMARY KEY AUTO_INCREMENT,
    Nazwa_Producenta VARCHAR(100) NOT NULL,
    Adres_Producenta TEXT NOT NULL,
    NIP_Producenta CHAR(10) NOT NULL UNIQUE,
    Data_Podpisania_Umowy_z_producentem DATE NOT NULL CHECK (Data_Podpisania_Umowy_z_producentem <= "2025-09-01")
);

# Utwórz tabelę „Produkty” z kolumnami:

# id produktu
# id producenta
# nazwa produktu
# opis produktu
# cena netto zakupu
# cena brutto zakupu
# cena netto sprzedaży
# cena brutto sprzedaży
# procent VAT sprzedaży
# Do każdej kolumny ustaw odpowiedni „constraint”

    
CREATE TABLE Produkty (
    ID_Produktu INT PRIMARY KEY AUTO_INCREMENT,
    ID_Producenta INT NOT NULL,
    Nazwa_Produktu VARCHAR(100) NOT NULL,
    Opis_Produktu TEXT,
    Cena_Netto_Zakupu DECIMAL(10,2) NOT NULL CHECK (Cena_Netto_Zakupu >= 0),
    Cena_Brutto_Zakupu DECIMAL(10,2) NOT NULL ,
    Cena_Netto_Sprzedazy DECIMAL(10,2) NOT NULL CHECK (Cena_Netto_Sprzedazy >= 0),
    Cena_Brutto_Sprzedazy DECIMAL(10,2) NOT NULL,
    Procent_VAT_Sprzedazy DECIMAL(4,2) NOT NULL CHECK (Procent_VAT_Sprzedazy BETWEEN 0 AND 100)
    );

# Utwórz tabelę „Klienci” z kolumnami:

# id klienta
# imię
# nazwisko
# adres
# Do każdej kolumny ustaw odpowiedni „constraint”

CREATE TABLE Klienci (
    ID_Klienta INT PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(50) NOT NULL,
    Nazwisko VARCHAR(50) NOT NULL,
    Adres TEXT NOT NULL
);

# Utwórz tabelę „Zamówienia” z kolumnami:

# id zamówienia
# id klienta
# id produktu
# Data zamówienia
# Do każdej kolumny ustaw odpowiedni „constraint”


CREATE TABLE Zamowienia (
    ID_Zamowienia INT PRIMARY KEY AUTO_INCREMENT,
    ID_Klienta INT NOT NULL,
    ID_Produktu INT NOT NULL,
    Data_Zamowienia DATE NOT NULL CHECK (Data_Zamowienia <= "2025-09-21")
    );
    

# Połącz tabele ze sobą za pomocą kluczy obcych:

# Produkty – Producenci
# Zamówienia – Produkty
# Zamówienia - Klienci

ALTER TABLE Produkty
ADD CONSTRAINT fk_producent
FOREIGN KEY (ID_Producenta)
REFERENCES Producenci(ID_Producenta);

ALTER TABLE Zamowienia
ADD CONSTRAINT fk_produkt
FOREIGN KEY (ID_Produktu)
REFERENCES Produkty(ID_Produktu);

ALTER TABLE Zamowienia
ADD CONSTRAINT fk_klient
FOREIGN KEY (ID_Klienta)
REFERENCES Klienci(ID_Klienta);

# Każdą tabelę uzupełnij danymi wg:

# Tabela „Producenci” – 4 pozycje
# Tabela „Produkty” – 20 pozycji
# Tabela „Zamówienia” – 10 pozycji
# Tabela „Klienci” – 10 pozycji


INSERT INTO Producenci (Nazwa_Producenta, Adres_Producenta, NIP_Producenta, Data_Podpisania_Umowy_z_producentem)
VALUES 
('Reserved', 'ul. Piwna 12, Warszawa', '1234567890', '2023-05-10'),
('Cameo', 'ul. Zimowa 8, Kraków', '2345678901', '2022-11-15'),
('InnerStyle', 'ul. Wiejska 44, Szczecin', '3456789012', '2024-01-20'),
('FriendlyTrends', 'ul. Zielonki 5, Gdańsk', '4567890123', '2023-08-01');

INSERT INTO Produkty (ID_Producenta, Nazwa_Produktu, Opis_Produktu, Cena_Netto_Zakupu, Cena_Brutto_Zakupu, Cena_Netto_Sprzedazy, Cena_Brutto_Sprzedazy, Procent_VAT_Sprzedazy)
VALUES
(1, 'T-shirt Basic', 'Bawełniany t-shirt, biały', 20.00, 24.60, 35.00, 42.00, 20),
(1, 'Jeans Slim', 'Granatowe jeansy slim fit', 60.00, 73.80, 99.00, 118.80, 20),
(2, 'Bluza Hoodie', 'Szara bluza z kapturem', 45.00, 55.35, 79.00, 94.80, 20),
(2, 'Koszula Elegancka', 'Biała koszula męska', 40.00, 49.20, 75.00, 90.00, 20),
(3, 'Kurtka Zimowa', 'Puchowa kurtka czarna', 120.00, 147.60, 199.00, 238.80, 20),
(3, 'Spodnie Dresowe', 'Czarne spodnie sportowe', 30.00, 36.90, 59.00, 70.80, 20),
(4, 'Sukienka Letnia', 'Zwiewna sukienka w kwiaty', 50.00, 61.50, 89.00, 106.80, 20),
(4, 'Sweter Wełniany', 'Beżowy sweter z wełny', 55.00, 67.65, 95.00, 114.00, 20),
(1, 'Czapka Zimowa', 'Ciepła czapka z pomponem', 15.00, 18.45, 29.00, 34.80, 20),
(1, 'Szalik', 'Szalik w kratę', 18.00, 22.14, 32.00, 38.40, 20),
(2, 'Buty Sportowe', 'Białe sneakersy', 80.00, 98.40, 139.00, 166.80, 20),
(2, 'Torba Na Ramię', 'Torba materiałowa', 25.00, 30.75, 49.00, 58.80, 20),
(3, 'Pasek Skórzany', 'Czarny pasek z klamrą', 22.00, 27.06, 39.00, 46.80, 20),
(3, 'Okulary Przeciwsłoneczne', 'UV400, czarne', 35.00, 42.70, 59.00, 70.80, 20),
(4, 'Kapelusz Letni', 'Słomkowy kapelusz', 28.00, 34.44, 49.00, 58.80, 20),
(4, 'Rękawiczki Skórzane', 'Brązowe rękawiczki', 32.00, 39.36, 55.00, 66.00, 20),
(1, 'Koszulka Polo', 'Granatowa polo', 25.00, 30.75, 45.00, 54.00, 20),
(2, 'Spódnica Jeansowa', 'Niebieska spódnica', 40.00, 49.20, 69.00, 82.80, 20),
(3, 'Marynarka Męska', 'Grafitowa marynarka', 90.00, 110.70, 149.00, 178.80, 20),
(4, 'Bluzka Koronkowa', 'Biała bluzka z koronką', 38.00, 46.36, 65.00, 78.00, 20);

INSERT INTO Klienci (Imie, Nazwisko, Adres)
VALUES
('Anna', 'Kowalska', 'ul. Leśna 3, Warszawa'),
('Piotr', 'Nowak', 'ul. Polna 7, Kraków'),
('Katarzyna', 'Wiśniewska', 'ul. Wiosenna 12, Wrocław'),
('Tomasz', 'Mazur', 'ul. Jesienna 5, Gdańsk'),
('Monika', 'Zielińska', 'ul. Słoneczna 9, Poznań'),
('Marek', 'Wójcik', 'ul. Krótka 2, Lublin'),
('Joanna', 'Krawczyk', 'ul. Długa 14, Białystok'),
('Adam', 'Szymański', 'ul. Górska 6, Katowice'),
('Natalia', 'Dąbrowska', 'ul. Różana 8, Łódź'),
('Paweł', 'Pawlak', 'ul. Tęczowa 10, Szczecin');

select *
from Klienci;

INSERT INTO Zamowienia (ID_Klienta, ID_Produktu, Data_Zamowienia)
VALUES
(1, 3, '2025-09-10'),
(2, 7, '2025-09-11'),
(3, 12, '2025-09-12'),
(4, 1, '2025-09-13'),
(5, 5, '2025-09-14'),
(6, 9, '2025-09-15'),
(7, 15, '2025-09-16'),
(8, 18, '2025-09-17'),
(9, 20, '2025-09-18'),
(10, 6, '2025-09-19');

select *
from Zamowienia;


# Wyświetl wszystkie produkty z wszystkimi danymi od producenta który znajduje się na pozycji 1 w tabeli „Producenci”
SELECT 
    p.ID_Produktu,
    p.Nazwa_Produktu,
    p.Opis_Produktu,
    p.Cena_Netto_Zakupu,
    p.Cena_Brutto_Zakupu,
    p.Cena_Netto_Sprzedazy,
    p.Cena_Brutto_Sprzedazy,
    p.Procent_VAT_Sprzedazy,
    pr.ID_Producenta,
    pr.Nazwa_Producenta,
    pr.Adres_Producenta,
    pr.NIP_Producenta,
    pr.Data_Podpisania_Umowy_z_producentem
FROM Produkty p
JOIN Producenci pr ON p.ID_Producenta = pr.ID_Producenta
WHERE pr.ID_Producenta = 1;

# Posortuj te produkty alfabetycznie po nazwie
SELECT 
    p.ID_Produktu,
    p.Nazwa_Produktu,
    p.Opis_Produktu,
    p.Cena_Netto_Zakupu,
    p.Cena_Brutto_Zakupu,
    p.Cena_Netto_Sprzedazy,
    p.Cena_Brutto_Sprzedazy,
    p.Procent_VAT_Sprzedazy,
    pr.ID_Producenta,
    pr.Nazwa_Producenta,
    pr.Adres_Producenta,
    pr.NIP_Producenta,
    pr.Data_Podpisania_Umowy_z_producentem
FROM Produkty p
JOIN Producenci pr ON p.ID_Producenta = pr.ID_Producenta
WHERE pr.ID_Producenta = 1
ORDER BY p.Nazwa_Produktu ASC;


# Wylicz średnią cenę za produktu od producenta z pozycji 1
SELECT 
    AVG(Cena_Netto_Zakupu) AS 'Śr. Netto Zakupu',
    AVG(Cena_Brutto_Zakupu) AS 'Śr. Brutto Zakupu',
    AVG(Cena_Netto_Sprzedazy) AS 'Śr. Netto Sprzedaży',
    AVG(Cena_Brutto_Sprzedazy) AS 'Śr. Brutto Sprzedaży'
FROM Produkty
WHERE ID_Producenta = 1;


# Wyświetl dwie grupy produktów tego producenta:

# Połowa najtańszych to grupa: „Tanie”
# Pozostałe to grupa: „Drogie”


SELECT 
    p.Nazwa_Produktu,
    p.Cena_Brutto_Sprzedazy,
    CASE 
        WHEN p.Cena_Brutto_Sprzedazy <= (
            SELECT AVG(Cena_Brutto_Sprzedazy)
            FROM Produkty
            WHERE ID_Producenta = 1
        ) THEN 'Tanie'
        ELSE 'Drogie'
    END AS Grupa_Cenowa
FROM Produkty p
WHERE p.ID_Producenta = 1
ORDER BY p.Cena_Brutto_Sprzedazy;


# Wyświetl produkty zamówione, wyświetlając tylko ich nazwę

SELECT DISTINCT p.Nazwa_Produktu AS 'Zamówiony Produkt'
FROM Zamowienia z
JOIN Produkty p ON z.ID_Produktu = p.ID_Produktu;

# Wyświetl wszystkie produkty zamówione – ograniczając wyświetlanie do 5 pozycji

SELECT DISTINCT p.Nazwa_Produktu AS 'Zamówiony Produkt'
FROM Zamowienia z
JOIN Produkty p ON z.ID_Produktu = p.ID_Produktu
LIMIT 5;

# Policz łączną wartość wszystkich zamówień

SELECT 
    SUM(p.Cena_Brutto_Sprzedazy) AS 'Łączna Wartość Zamówień (Brutto)'
FROM Zamowienia z
JOIN Produkty p ON z.ID_Produktu = p.ID_Produktu;

# Wyświetl wszystkie zamówienia wraz z nazwą produktu sortując je wg daty od najstarszego do najnowszego

SELECT 
    z.ID_Zamowienia AS 'ID Zamówienia',
    p.Nazwa_Produktu AS 'Nazwa Produktu',
    z.Data_Zamowienia AS 'Data Zamówienia'
FROM Zamowienia z
JOIN Produkty p ON z.ID_Produktu = p.ID_Produktu
ORDER BY z.Data_Zamowienia ASC;

# Sprawdź czy w tabeli produkty masz uzupełnione wszystkie dane – wyświetl pozycje dla których brakuje danych

SELECT *
FROM Produkty
WHERE 
    ID_Producenta IS NULL OR
    Nazwa_Produktu IS NULL OR
    Opis_Produktu IS NULL OR
    Cena_Netto_Zakupu IS NULL OR
    Cena_Brutto_Zakupu IS NULL OR
    Cena_Netto_Sprzedazy IS NULL OR
    Cena_Brutto_Sprzedazy IS NULL OR
    Procent_VAT_Sprzedazy IS NULL;


# Wyświetl produkt najczęściej sprzedawany wraz z jego ceną

SELECT 
    p.Nazwa_Produktu AS 'Najczęściej Sprzedawany Produkt',
    p.Cena_Brutto_Sprzedazy AS 'Cena Brutto',
    COUNT(*) AS 'Liczba Zamówień'
FROM Zamowienia z
JOIN Produkty p ON z.ID_Produktu = p.ID_Produktu
GROUP BY p.ID_Produktu, p.Nazwa_Produktu, p.Cena_Brutto_Sprzedazy
ORDER BY COUNT(*) DESC;    

# Znajdź dzień w którym najwięcej zostało złożonych zamówień

SELECT 
    Data_Zamowienia AS 'Dzień',
    COUNT(*) AS 'Liczba Zamówień'
FROM Zamowienia
GROUP BY Data_Zamowienia
ORDER BY COUNT(*) DESC;
