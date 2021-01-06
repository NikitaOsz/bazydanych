/* 
	Zapytania do bazy danych oddzial_polozniczy
*/


/*1. łączenie wewnętrzne (Wypisuje imię, nazwisko oraz pesel pacjenta, lekarza, który zajmował się tym pacjentem oraz numer sali.)*/
CREATE VIEW widok_1 AS 
SELECT p.imie AS imie_pacjenta, p.nazwisko AS nazwisko_pacjenta, p.pesel AS pesel_pacjenta, l.imie AS imie_lekarza, l.nazwisko AS nazwisko_lekarza, l.pesel AS pesel_lekarza, sale.nr_sali AS nr_sali
FROM sale_porodowe_rezerwacja AS sale
INNER JOIN lekarze  AS l ON l.id_lekarza = sale.id_lekarza
INNER JOIN pacjenci AS p ON p.id_pacjenta = sale.id_pacjenta;

/*2. łączenie wewnętrzne (wyświetla id noworodka, imię matki oraz nazwisko matki, data urodzin noworodka i numer sali w której urodził się noworodek.)*/
CREATE VIEW widok_2 AS 
SELECT n.id_noworodka, n.imie_matki, n.nazwisko_matki, n.data_urodzin, sale.nr_sali
FROM sale_porodowe_rezerwacja AS sale
INNER JOIN pacjenci AS p ON p.id_pacjenta = sale.id_pacjenta
INNER JOIN noworodki AS n ON p.id_pacjenta = n.id_pacjenta;

/*3. łączenie wewnętrzne (wyświetla imię matki, nazwisko matki, grupę krwi oraz id noworodka, grupę krwi noworodka, gdy matka oraz noworodek mają tę samą grupę krwi.)*/
CREATE VIEW widok_3 AS 
SELECT p.grupa_krwi AS grupa_krwi_matki, n.imie_matki, n.nazwisko_matki, n.grupa_krwi AS grupa_krwi_noworodka
FROM pacjenci AS p
INNER JOIN noworodki AS n ON p.id_pacjenta = n.id_pacjenta AND p.grupa_krwi = n.grupa_krwi;

/*4. łączenie zewnętrzne (wyświetla dane o pacjentach. którzy przebywali w salach porodowych.)*/
CREATE VIEW widok_4 AS 
SELECT l.imie, l.nazwisko, l.pesel, l.id_lekarza
FROM lekarze AS l
LEFT JOIN sale_porodowe_rezerwacja AS sale ON sale.id_lekarza = l.id_lekarza
WHERE sale.id_lekarza IS NULL;

/*5. funkcja agregująca count (sprawdza ile nowordoków urodziło sie przed rokiem 2000.)*/
CREATE VIEW widok_5 AS 
SELECT COUNT(id_noworodka) AS liczba_noworodków_przed_rokiem_2000
FROM noworodki
WHERE YEAR(data_urodzin) < 2000;

/*6. funkcja agregująca count (zlicza ilość przypisanych pielęgniarek do rezerwacji.)*/
CREATE VIEW widok_6 AS 
SELECT COUNT(id_pielegniarki), id_rezerwacji FROM pielegniarka_rez_sali GROUP BY id_rezerwacji;

/*7. funkcja agregująca avg (zlicza średie wynagrodzenie lekarzy oraz pielęgniarek.)*/
CREATE VIEW widok_7 AS 
SELECT AVG(l.wynagrodzenie) AS sr_wyn_lekarzy, AVG(p.wynagrodzenie) AS sr_wyn_pielegniarek
FROM lekarze AS l, pielegniarki AS p;

/*8. funkcja agregująca sum (zwraca sumę wynagrodzenia lekarzy)*/
CREATE VIEW widok_8 AS 
SELECT SUM(wynagrodzenie) AS suma_wyn_lekarzy
FROM lekarze;

/*9. podzapytanie (wyświetla dane pacjenta jeżeli id choroby było większe od 5)*/
CREATE VIEW widok_9 AS 
SELECT *
FROM pacjenci
WHERE id_pacjenta IN
(SELECT id_pacjenta 
FROM historia_chorob
WHERE id_choroby > 5);

/*10. podzapytanie (zwraca dane noworodka jeżeli matka ma 30 lat lub więcej)*/
CREATE VIEW widok_10 AS 
SELECT * 
FROM noworodki
WHERE id_pacjenta IN
(SELECT id_pacjenta
FROM pacjenci
WHERE YEAR(current_date()) - YEAR(data_urodzenia) > 30);
