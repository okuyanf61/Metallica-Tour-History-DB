CREATE VIEW istanbul_concerts AS 
SELECT date, venue, festival, latitude, longitude, tour, set_length, has_doodle, has_medley, event_id, city.city_id, city_name 
FROM tour JOIN city ON tour.city_id = city.city_id
WHERE city_name = "Istanbul";

SELECT * FROM istanbul_concerts;