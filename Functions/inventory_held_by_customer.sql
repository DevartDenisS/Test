DELIMITER $$

SET @saved_sql_mode = @@sql_mode
$$
SET @@sql_mode = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_ENGINE_SUBSTITUTION'
$$
CREATE FUNCTION `inventory_held_by_customer`(p_inventory_id INT)
  RETURNS INT(11)
  READS SQL DATA
BEGIN
  DECLARE v_customer_id INT;
  DECLARE EXIT HANDLER FOR NOT FOUND RETURN NULL;

  SELECT customer_id INTO v_customer_id
  FROM rental
  WHERE return_date IS NULL
  AND inventory_id = p_inventory_id;

  RETURN v_customer_id;
END
$$

DELIMITER ;