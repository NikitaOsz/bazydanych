/*
	Dodawanie rekordów do tabel z bazy oddzial_polozniczy;
*/

USE oddzial_polozniczy;

/*--------------------------------------------------------------------------------------------------------------------------------*/
/*
	Dodawanie rekordów do tabeli pacjenci
*/
/*--------------------------------------------------------------------------------------------------------------------------------*/


/*1*/
INSERT INTO pacjenci
VALUES (DEFAULT, 35856000321, 'Patrycja', 'Kmiot', 'AB Rh+', 552012456, DATE '1990-01-26', 'Elbląg', 'Ogólna 7/8', 'Elbląg', '82-300');

/*2*/
INSERT INTO pacjenci
VALUES (DEFAULT, 94037481090, 'Zuzanna', 'Nietlana', 'AB Rh+', 678543123, DATE '1980-01-16', 'Elbląg', 'Batorego 12/12', 'Elbląg', '82-300');

/*3*/
INSERT INTO pacjenci
VALUES (DEFAULT, 56478623532, 'Julia', 'Romowska', 'AB Rh-', 123456789, DATE '1986-03-13', 'Kraków', 'Niepodległości 7', 'Elbląg', '82-300');

/*4*/
INSERT INTO pacjenci
VALUES (DEFAULT, 19283746592, 'Aleksandra', 'Malecka', '0 Rh+', 987654321, DATE '1967-07-21', 'Elbląg', 'Mała 137/41', 'Elbląg', '82-300');

/*5*/
INSERT INTO pacjenci
VALUES (DEFAULT, 79201743423, 'Patrycja', 'Elenowa', 'A Rh+', 334455667, DATE '1999-09-04', 'Sopot', 'Pochodna 13/31', 'Sopot', '13-303');

/*6*/
INSERT INTO pacjenci
VALUES (DEFAULT, 29304758192, 'Grażyna', 'Słowacka', 'AB Rh+', 932817364, DATE '2001-04-01', 'Gdynia', 'Bazowa 3/4', 'Gdansk', '12-330');

/*7*/
INSERT INTO pacjenci
VALUES (DEFAULT, 02901729708, 'Karyna', 'Mentol', 'B Rh+', 909877823, DATE '1985-05-12', 'Gdańsk', 'Jarka 12/05', 'Elbląg', '82-300');

/*8*/
INSERT INTO pacjenci
VALUES (DEFAULT, 00477281995, 'Agata', 'Krasna', 'AB Rh+', 102938475, DATE '1991-11-30', 'Wrocław', 'Towarowa 13/30', 'Elbląg', '82-300');

/*9*/
INSERT INTO pacjenci
VALUES (DEFAULT, 11774933382, 'Weronika', 'Mimich', '0 Rh-', 657483920, DATE '1993-12-31', 'Kraków', 'Niska 05/13', 'Elbląg', '82-300');

/*10*/
INSERT INTO pacjenci
VALUES (DEFAULT, 03339477222, 'Weronika', 'Palec', 'A Rh+', 507333442, DATE '1989-03-09', 'Opole', 'Niepodległości 4', 'Elbląg','82-300');

/*--------------------------------------------------------------------------------------------------------------------------------*/
/*
	Dodawanie rekordów do tabeli lekarze
*/
/*--------------------------------------------------------------------------------------------------------------------------------*/

/*1*/
INSERT INTO lekarze
VALUES (DEFAULT, 77768900043, 'Lidia', 'Marlecka', 851119211, DATE '1966-11-30', 'Elbląg', 'Browarna 7/8', 'Elbląg', '82-300',  DATE '2014-03-02', 19990);

/*2*/
INSERT INTO lekarze
VALUES (DEFAULT, 55567766453, 'Marcin', 'Niedorzeczny', 960959161, DATE '1980-10-08', 'Elbląg', 'Marna 2/13', 'Elbląg', '82-300',  DATE '2016-07-22', 14990);

/*3*/
INSERT INTO lekarze
VALUES (DEFAULT, 13567990890, 'Kamil', 'Młot', 219420893, DATE '1977-05-17', 'Elbląg', 'Zawadzka 4', 'Elbląg', '82-300',  DATE '2013-02-21', 13990);

/*4*/
INSERT INTO lekarze
VALUES (DEFAULT, 55778987889, 'Sebastian', 'Trzmiel', 639403260, DATE '1989-03-02', 'Elbląg', 'Niska 5/5', 'Elbląg', '82-300',  DATE '2012-11-08', 8000);

/*5*/
INSERT INTO lekarze
VALUES (DEFAULT, 11445554432, 'Michał', 'Dobrodziej', 141344959, DATE '1990-02-13', 'Elbląg', 'Jagielońska 13/11', 'Elbląg', '82-300',  DATE '2001-12-07', 12000);

/*6*/
INSERT INTO lekarze
VALUES (DEFAULT, 00998098776, 'Kacper', 'Szewczyk', 773839459, DATE '1974-01-01', 'Elbląg', 'Kalenkiewicza 128/17', 'Elbląg', '82-300',  DATE '2013-06-23', 11500);

/*7*/
INSERT INTO lekarze
VALUES (DEFAULT, 56565434567, 'Ewelina', 'Rychu', 243234655, DATE '1978-10-16', 'Elbląg', 'Ogólna 3/3', 'Elbląg', '82-300',  DATE '2015-05-15', 9500);

/*8*/
INSERT INTO lekarze
VALUES (DEFAULT, 75932118225, 'Ryszard', 'Potecki', 411503146, DATE '1984-06-06', 'Elbląg', 'Mediana 9/10', 'Elbląg', '82-300',  DATE '2014-08-03', 10500);

/*9*/
INSERT INTO lekarze
VALUES (DEFAULT, 97921201645, 'Grzegorz', 'Marecki', 862915320, DATE '1989-12-31', 'Elbląg', 'Kwarcowa 2/48', 'Elbląg', '82-300',  DATE '2012-09-12', 10990);

/*10*/
INSERT INTO lekarze
VALUES (DEFAULT, 77968929190, 'Marcin', 'Kmiot', 390935935, DATE '1990-01-26', 'Elbląg', 'Ogólna 7/8', 'Elbląg', '82-300',  DATE '2016-11-01', 12900);

/*--------------------------------------------------------------------------------------------------------------------------------*/
/*
	Dodawanie rekordów do tabeli pielegniarki
*/
/*--------------------------------------------------------------------------------------------------------------------------------*/

/*1*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 90694228951, 'Julita', 'Maciok', 337566045, DATE '1983-01-20', 'Elbląg', 'Ogólna 2/5', 'Elbląg', '82-300',  DATE '2016-11-30', 4500);

/*2*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 34943729939, 'Katarzyna', 'Torbiel', 345687288, DATE '1988-02-22', 'Elbląg', 'Marna 3/4', 'Elbląg', '82-300',  DATE '2016-02-01', 4500);

/*3*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 75560425153, 'Patrycja', 'Ocna', 874200512, DATE '1992-05-27', 'Elbląg', 'Ogrodowa 1/21', 'Elbląg', '82-300',  DATE '2016-01-09', 5000);

/*4*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 75081571167, 'Dominika', 'Rosz', 588503563, DATE '1996-06-29', 'Elbląg', 'Marowiecka 11/1', 'Elbląg', '82-300',  DATE '2016-04-10', 5500);

/*5*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 41161331612, 'Róża', 'Kowalska', 636163292, DATE '1992-01-14', 'Elbląg', 'Browarna 5/52', 'Elbląg', '82-300',  DATE '2016-10-11', 5000);

/*6*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 70791847275, 'Patrycja', 'Kmiot', 554519651, DATE '1995-12-03', 'Elbląg', 'Ogólna 113/31', 'Elbląg', '82-300',  DATE '2016-12-13', 4000);

/*7*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 61345390486, 'Justyna', 'Malinowska', 469174321, DATE '1994-11-01', 'Elbląg', 'Browarna 3/21', 'Elbląg', '82-300',  DATE '2016-06-21', 5500);

/*8*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 22703144111, 'Nikola', 'Męczyńska', 683155117, DATE '1993-09-24', 'Elbląg', 'Szczególna 18/22', 'Frombork', '12-290',  DATE '2016-04-21', 4500);

/*9*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 97063122601, 'Brygida', 'Pocisz', 822861404, DATE '1992-07-13', 'Elbląg', 'Batorego 22/21', 'Elbląg', '82-300',  DATE '2016-04-21', 5000);

/*10*/
INSERT INTO pielegniarki
VALUES (DEFAULT, 88534854653, 'Iwona', 'Kmiotowska', 189930910, DATE '1991-08-26', 'Elbląg', 'Mimiczna 13/15', 'Elbląg', '82-300',  DATE '2016-01-13', 6500);

/*--------------------------------------------------------------------------------------------------------------------------------*/
/*
	Dodawanie rekordów do tabeli historia_chorob
*/
/*--------------------------------------------------------------------------------------------------------------------------------*/

/*1*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 1, 'skurcze brzucha', 'Mocne skurcze brzucha w pierwszym trymestrze ciąży, niegrozne, podano leki przeciwbólone oraz kroplówkę, wypisano.');

/*2*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 2, 'przedwczesny poród', 'Poród trzy tygodnie przed terminem, dziecko inkubowano, po tygodniu wypisano matkę wraz z dzieckiem.');

/*3*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 2, 'ból brzucha', 'Mocne bóle brzucha po stronie wątroby, zapalenie trzustki, podano apap noc, wypisano.');

/*4*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 3, 'zapalenie przełyku', 'Reakcja na podane leki przeciwbólowe na bóle brzucha, podano leki przeciwzapalne, wypisano.');

/*5*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 4, 'omamy', 'Pneumokoki, podano leki, po tygodniu wypisano.');

/*6*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 5, 'skurcze brzucha', 'Mocne skurcze brzucha w pierwszym trymestrze ciąży, niegrozne, podano leki przeciwbólone oraz kroplówkę, wypisano.');

/*7*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 6, 'reakcja alergiczna', 'Podano sterydy, po dwóch dniach wypisano.');

/*8*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 6, 'zle zrośnięta kośc lewej ręki', 'Operacja lewej ręki, założono gips, wypisano po dwóch dniach.');

/*9*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 2, 'złamana ręka', 'Podano leki przeciwbólowe, założono gips, wypisano.');

/*10*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 7, 'sepsa', 'Powikłania po operacji, podano leki przeciwzakazne, po dwóch tygodniach w izolatce wypisano.');

/*11*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 9, 'zakażenie rany', 'Podano leki przeciwzakazne, leki na odporność, po tygodniu wypisano.');

/*12*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 9, 'bóle w klatce piersiowej', 'Podano tlen, trzydziści minut w komorze tlenowej, podano leki, po trzech dniach wypisano.');

/*13*/
INSERT INTO historia_chorob
VALUES (DEFAULT, 10, 'zawał', 'Podano leki przciwskurczowe, po czterech dniach wypisano.');

/*--------------------------------------------------------------------------------------------------------------------------------*/
/*
	Dodawanie rekordów do tabeli noworodki
*/
/*--------------------------------------------------------------------------------------------------------------------------------*/

/*1*/
INSERT INTO noworodki
VALUES (DEFAULT, 1, 'Patrycja', 'Kmiot', 35856000321, DATE '2012-12-31', 'Elbląg', 'A Rh+');

/*2*/
INSERT INTO noworodki
VALUES (DEFAULT, 2, 'Zuzanna', 'Nietlana', 94037481090, DATE '2001-01-01', 'Elbląg', 'AB Rh-');

/*3*/
INSERT INTO noworodki
VALUES (DEFAULT, 3, 'Julia', 'Romowska', 56478623532, DATE '2014-02-02', 'Elbląg', 'B Rh+');

/*4*/
INSERT INTO noworodki
VALUES (DEFAULT, 4, 'Aleksandra', 'Malecka', 19283746592, DATE '2013-10-19', 'Elbląg', 'A Rh+');

/*5*/
INSERT INTO noworodki
VALUES (DEFAULT, 5, 'Patrycja', 'Elenowa', 79201743423, DATE '2017-09-20', 'Elbląg', '0 Rh-');

/*6*/
INSERT INTO noworodki
VALUES (DEFAULT, 6, 'Grażyna', 'Słowacka', 29304758192, DATE '2015-05-21', 'Elbląg', 'AB Rh+');

/*7*/
INSERT INTO noworodki
VALUES (DEFAULT, 7, 'Karyna', 'Mentol', 02901729708, DATE '2018-06-06', 'Elbląg', '0 Rh+');

/*8*/
INSERT INTO noworodki
VALUES (DEFAULT, 8, 'Agata', 'Krasna', 00477281995, DATE '2020-12-01', 'Elbląg', 'B Rh+');

/*9*/
INSERT INTO noworodki
VALUES (DEFAULT, 8, 'Agata', 'Krasna', 00477281995, DATE '2020-12-01', 'Elbląg', 'A Rh-');

/*10*/
INSERT INTO noworodki
VALUES (DEFAULT, 9, 'Weronika', 'Mimich', 11774933382, DATE '2005-05-16', 'Elbląg', 'A Rh+');
/*11*/
INSERT INTO noworodki
VALUES (DEFAULT, 10, 'Weronika', 'Palec', 03339477222, DATE '1998-11-13', 'Elbląg', 'AB Rh-');

/*--------------------------------------------------------------------------------------------------------------------------------*/
/*
	Dodawanie rekordów do tabeli sale_porodowe
*/
/*--------------------------------------------------------------------------------------------------------------------------------*/

/*1*/
INSERT INTO sale_porodowe
VALUES (101);

/*2*/
INSERT INTO sale_porodowe
VALUES (102);

/*3*/
INSERT INTO sale_porodowe
VALUES (103);

/*4*/
INSERT INTO sale_porodowe
VALUES (104);

/*5*/
INSERT INTO sale_porodowe
VALUES (105);

/*6*/
INSERT INTO sale_porodowe
VALUES (106);

/*7*/
INSERT INTO sale_porodowe
VALUES (107);

/*8*/
INSERT INTO sale_porodowe
VALUES (108);

/*9*/
INSERT INTO sale_porodowe
VALUES (109);

/*10*/
INSERT INTO sale_porodowe
VALUES (110);

/*--------------------------------------------------------------------------------------------------------------------------------*/
/*
	Dodawanie rekordów do tabeli sale_porodowe_rezerwacja
*/
/*--------------------------------------------------------------------------------------------------------------------------------*/

/*1*/
INSERT INTO sale_porodowe_rezerwacja
VALUES (DEFAULT, 101, 1, 1);

/*2*/
INSERT INTO sale_porodowe_rezerwacja
VALUES (DEFAULT, 102, 2, 2);

/*3*/
INSERT INTO sale_porodowe_rezerwacja
VALUES (DEFAULT, 103, 3, 3);

/*4*/
INSERT INTO sale_porodowe_rezerwacja
VALUES (DEFAULT, 104, 4, 4);

/*5*/
INSERT INTO sale_porodowe_rezerwacja
VALUES (DEFAULT, 105, 5, 5);

/*6*/
INSERT INTO sale_porodowe_rezerwacja
VALUES (DEFAULT, 106, 6, 6);

/*7*/
INSERT INTO sale_porodowe_rezerwacja
VALUES (DEFAULT, 107, 7, 7);

/*--------------------------------------------------------------------------------------------------------------------------------*/
/*
	Dodawanie rekordów do tabeli pielegniarki_rez_sali
*/
/*--------------------------------------------------------------------------------------------------------------------------------*/

/*1*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 1, 1);

/*2*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 2, 1);

/*3*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 3, 1);

/*4*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 4, 2);

/*5*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 5, 3);

/*6*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 6, 4);

/*7*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 7, 5);

/*8*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 8, 5);

/*9*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 9, 6);

/*10*/
INSERT INTO pielegniarka_rez_sali
VALUES ( 10, 7);


