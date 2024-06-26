SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
--
-- View structure for view customer_list
--

CREATE VIEW [dbo].[customer_list]
AS
SELECT cu.customer_id AS ID, 
       cu.first_name + ' ' + cu.last_name AS name, 
       a.address AS address, 
       a.postal_code AS zip_code,
	   a.phone AS phone, 
	   city.city AS city, 
	   country.country AS country, 
	   case when cu.active=1 then 'active' else '' end AS notes, 
	   cu.store_id AS SID
FROM customer AS cu JOIN address AS a ON cu.address_id = a.address_id JOIN city ON a.city_id = city.city_id
	JOIN country ON city.country_id = country.country_id
GO