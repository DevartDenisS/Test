DELIMITER $$

SET @saved_sql_mode = @@sql_mode
$$
SET @@sql_mode = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION'
$$
CREATE TRIGGER `ins_film`
	AFTER INSERT
	ON film
	FOR EACH ROW
BEGIN
    INSERT INTO film_text (film_id, title, description)
        VALUES (new.film_id, new.title, new.description);
  END
$$

DELIMITER ;