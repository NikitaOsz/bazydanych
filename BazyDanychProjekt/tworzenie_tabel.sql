USE oddzial_polozniczy;
/*
	W tym pliku są tworzone wszystkie tabele bazy oddzial_polozniczy;
*/


CREATE TABLE pacjenci (
	id_pacjenta int PRIMARY KEY AUTO_INCREMENT,
	pesel bigint,
    imie varchar (60),
    nazwisko varchar (60),
    grupa_krwi varchar (10),
    nr_telefonu int,
    data_urodzenia date,
    miejsce_urodzenia varchar (128),
    adres_zamieszkania varchar (128),
    miasto varchar (128),
    kod_pocztowy varchar (6)
);

CREATE TABLE lekarze (
	id_lekarza int PRIMARY KEY AUTO_INCREMENT,
	pesel bigint,
    imie varchar (60),
    nazwisko varchar (60),
    nr_telefonu int,
    data_urodzenia date,
    miejsce_urodzenia varchar (128),
    adres_zamieszkania varchar (128),
    miasto varchar (128),
    kod_pocztowy varchar (6),
    data_zatrudnienia date,
    wynagrodzenie int
);

CREATE TABLE pielegniarki (
	id_pielegniarki int PRIMARY KEY AUTO_INCREMENT,
	pesel bigint,
    imie varchar (60),
    nazwisko varchar (60),
    nr_telefonu int,
    data_urodzenia date,
    miejsce_urodzenia varchar (128),
    adres_zamieszkania varchar (128),
    miasto varchar (128),
    kod_pocztowy varchar (6),
    data_zatrudnienia date,
    wynagrodzenie int
);

CREATE TABLE noworodki (
	id_noworodka int PRIMARY KEY AUTO_INCREMENT,
    id_pacjenta int,
    FOREIGN KEY (id_pacjenta) REFERENCES pacjenci(id_pacjenta),
    imie_matki varchar (128),
    nazwisko_matki varchar (128),
    pesel_matki bigint,
    data_urodzin date,
    miejsce_urodzin varchar (128),
    grupa_krwi varchar (10)
);

CREATE TABLE historia_chorob (
	id_choroby int PRIMARY KEY AUTO_INCREMENT,
	id_pacjenta int,
    FOREIGN KEY (id_pacjenta) REFERENCES pacjenci(id_pacjenta),
    nazwa varchar (256),
	opis varchar (1024)
);

CREATE TABLE sale_porodowe (
    nr_sali int PRIMARY KEY UNIQUE
    );
    
CREATE TABLE sale_porodowe_rezerwacja (
	id_rezerwacji int PRIMARY KEY AUTO_INCREMENT,
    nr_sali int,
    FOREIGN KEY (nr_sali) REFERENCES sale_porodowe(nr_sali),
    id_lekarza int,
    FOREIGN KEY (id_lekarza) REFERENCES lekarze(id_lekarza),
    id_pacjenta int, 
	FOREIGN KEY (id_pacjenta) REFERENCES pacjenci(id_pacjenta)
    );

CREATE TABLE archiwum_rezerwacja LIKE sale_porodowe_rezerwacja;

CREATE TABLE pielegniarka_rez_sali (
	id_pielegniarki int,
    FOREIGN KEY (id_pielegniarki) REFERENCES pielegniarki(id_pielegniarki),
    id_rezerwacji int,
    FOREIGN KEY(id_rezerwacji) REFERENCES sale_porodowe_rezerwacja(id_rezerwacji),
    PRIMARY KEY(id_pielegniarki, id_rezerwacji)
	);
