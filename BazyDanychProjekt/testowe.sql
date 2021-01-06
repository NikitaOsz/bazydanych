/*
	Wyzwalacze, procedura oraz funkcja
*/

/*1. wyzwalacz (sprawdza czy wprowadzona sala jest zajęta.)*/
DELIMITER //
CREATE TRIGGER sale_porodowe_status_sali
BEFORE INSERT ON sale_porodowe_rezerwacja
FOR EACH ROW
BEGIN
	DECLARE message VARCHAR(256);
	IF (SELECT COUNT(nr_sali) FROM sale_porodowe_rezerwacja WHERE nr_sali = NEW.nr_sali) > 0
		THEN 
			set message="Podana sala jest zajęta.";
			signal sqlstate '13500'
			set message_text = message;
	END IF;
END
//
DELIMITER ;


/*2. wyzwalacz (wprowadza do archiwum stare rezerwacje sal.)*/
DELIMITER //
CREATE TRIGGER archiwum_rezerwacji_trigger
AFTER DELETE ON sale_porodowe_rezerwacja
FOR EACH ROW
BEGIN
    INSERT INTO archiwum_rezerwacja VALUES (old.id_rezerwacji, old.nr_sali, old.id_lekarza, old.id_pacjenta);
END
//
DELIMITER ;

/*3. procedura (wyświetla wolne sale.)*/
DELIMITER $$
CREATE PROCEDURE pokaz_wolne_sale()
BEGIN 
	SELECT sale.nr_sali FROM sale_porodowe AS sale LEFT JOIN sale_porodowe_rezerwacja AS rezer ON sale.nr_sali = rezer.nr_sali WHERE rezer.nr_sali IS NULL;
END 
$$
DELIMITER ;