SELECT City, COUNT(EmployeeID) AS NumEmployees
FROM Employees
GROUP BY City;
SELECT song_name, count(tour_to_song.type) FROM tour_to_song JOIN song ON tour_to_song.song_id = song.song_id WHERE tour_to_song.type LIKE "S%" GROUP BY song_name ORDER BY count(tour_to_song.type) DESC LIMIT 1;

SELECT song_name, tour_to_song.type FROM tour_to_song JOIN song ON tour_to_song.song_id = song.song_id WHERE tour_to_song.type LIKE "S%";

SELECT city_id, city_name, state.state_id, state_name, country.country_id, country_name FROM city JOIN state ON city.state_id = state.state_id JOIN country ON state.country_id = country.country_id LIMIT 30;

SET @city = "Istanbul";
CALL CityCountry(@city);
SELECT @city;

SELECT city_id, city_name, state.state_id, state_name, country.country_id, country_name
FROM city JOIN state ON city.state_id = state.state_id JOIN country ON state.country_id = country.country_id 
WHERE city_name = "Istanbul";

SELECT * FROM city;
SELECT * FROM state;
SELECT * FROM country;

SELECT date, venue, festival, latitude, longitude, tour, set_length, has_doodle, has_medley, event_id, city.city_id, city_name 
FROM tour JOIN city ON tour.city_id = city.city_id
WHERE city_name = "Istanbul";



