DELIMITER $$

SET @saved_sql_mode = @@sql_mode
$$
SET @@sql_mode = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION'
$$
CREATE TRIGGER `upd_film`
	AFTER UPDATE
	ON film
	FOR EACH ROW
BEGIN
    IF (old.title != new.title) OR (old.description != new.description) OR (old.film_id != new.film_id)
    THEN
        UPDATE film_text
            SET title=new.title,
                description=new.description,
                film_id=new.film_id
        WHERE film_id=old.film_id;
    END IF;
  END
$$

DELIMITER ;