CREATE DEFINER=`root`@`localhost` PROCEDURE `CityCountry`(INOUT city VARCHAR(255))
BEGIN
SELECT country_name 
INTO city
FROM city JOIN state ON city.state_id = state.state_id JOIN country ON state.country_id = country.country_id 
WHERE city_name = city;
END

SET @city = "Istanbul";
CALL CityCountry(@city);
SELECT @city;
