SHOW VARIABLES LIKE "secure_file_priv";


load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\acts.csv' 
into table acts fields terminated by "," ;
select * from acts;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\country.csv' 
into table country fields terminated by "," ;
select * from country;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\state.csv' 
into table state fields terminated by "," ;
select * from state;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\city.csv' 
into table city fields terminated by "," ;
select * from city;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\tour.csv' 
into table tour fields terminated by "," ;
select * from tour;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\album.csv' 
into table album fields terminated by "," ;
select * from album;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\album_to_counter.csv' 
into table album_to_counter fields terminated by "," ;
select * from album_to_counter;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\event_to_inst.csv' 
into table event_to_inst fields terminated by "," ;
select * from event_to_inst;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\event_url.csv' 
into table event_url fields terminated by "," ;
select * from event_url;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\instrument.csv' 
into table instrument fields terminated by "," ;
select * from instrument;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\song.csv' 
into table song fields terminated by "," ;
select * from song;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\tour_to_act.csv' 
into table tour_to_act fields terminated by "," ;
select * from tour_to_act;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\tour_to_song.csv' 
into table tour_to_song fields terminated by "," ;
select * from tour_to_song;
