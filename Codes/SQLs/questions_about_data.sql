#How many concerts did Metallica perform?
SELECT count(*) FROM tour;
#When did Metallica perform first concert?
SELECT min(date) FROM tour;
#How many tours has Metallica worldwired?
SELECT count(*) FROM tour WHERE tour LIKE "World%";
#How many songs were played at Metallica concerts in total?
SELECT sum(set_length) FROM tour;
#Which song did Metallica usually finish her concert with?
SELECT song_name, count(tour_to_song.type) FROM tour_to_song JOIN song ON tour_to_song.song_id = song.song_id WHERE tour_to_song.type LIKE "LTS%" GROUP BY song_name ORDER BY count(tour_to_song.type) DESC LIMIT 1;
#How many songs maximally did Metallica played at a concert?
SELECT max(set_length) FROM tour;
#How many songs averagely were played at Metallica concerts?
SELECT avg(set_length) FROM tour;
#How many of Metallica's concerts have solo guitar?
SELECT count(*) FROM event_to_inst JOIN instrument ON event_to_inst.instrument_id = instrument.instrument_type WHERE instrument_name = "guitar";
#What is the average position of Metallica's concerts?
SELECT avg(latitude), avg(longitude) FROM tour;
#How many concerts did Metallica perform after January 01, 2008?
SELECT count(*) FROM tour WHERE date > "2008-01-01";
#What is the most performed song in concerts at total?
SELECT song_name, count(tour_to_song.type) FROM tour_to_song JOIN song ON tour_to_song.song_id = song.song_id WHERE tour_to_song.type LIKE "S%" GROUP BY song_name ORDER BY count(tour_to_song.type) DESC LIMIT 1;