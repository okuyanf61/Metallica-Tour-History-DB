ALTER TABLE tour_to_act ADD CONSTRAINT fk_tour_to_act_tour1 FOREIGN KEY (event_id) REFERENCES tour(event_id);

ALTER TABLE state ADD CONSTRAINT fk_state_country FOREIGN KEY (country_id) REFERENCES country(country_id);

ALTER TABLE city ADD CONSTRAINT fk_city_state1 FOREIGN KEY (state_id) REFERENCES state(state_id);

ALTER TABLE tour ADD CONSTRAINT fk_tour_city1 FOREIGN KEY (city_id) REFERENCES city(city_id);

ALTER TABLE album_to_counter ADD CONSTRAINT fk_album_to_counter_album1 FOREIGN KEY (album_id) REFERENCES album(album_id);
ALTER TABLE album_to_counter ADD CONSTRAINT fk_album_to_counter_tour1 FOREIGN KEY (event_id) REFERENCES tour(event_id);

ALTER TABLE event_to_inst ADD CONSTRAINT fk_event_to_inst_instrument1 FOREIGN KEY (instrument_id) REFERENCES instrument(instrument_type);
ALTER TABLE event_url ADD CONSTRAINT fk_event_url_tour1 FOREIGN KEY (event_id) REFERENCES tour(event_id);

ALTER TABLE tour_to_act ADD CONSTRAINT fk_tour_to_act_acts1 FOREIGN KEY (act_id) REFERENCES acts(act_id);

ALTER TABLE tour_to_song ADD CONSTRAINT fk_tour_to_song_song1 FOREIGN KEY (song_id) REFERENCES song(song_id);





CONSTRAINT `fk_tour_to_song_song1`
    FOREIGN KEY (`song_id`)
    REFERENCES `metallica_db`.`song` (`song_id`)


CONSTRAINT `fk_tour_to_act_acts1`
    FOREIGN KEY (`act_id`)
    REFERENCES `metallica_db`.`acts` (`act_id`)


CONSTRAINT `fk_event_url_tour1`
    FOREIGN KEY (`event_id`)
    REFERENCES `metallica_db`.`tour` (`event_id`)
    
CONSTRAINT `fk_event_to_inst_instrument1`
    FOREIGN KEY (`instrument_id`)
    REFERENCES `metallica_db`.`instrument` (`instrument_type`)
    
CONSTRAINT `fk_album_to_counter_album1`
    FOREIGN KEY (`album_id`)
    REFERENCES `metallica_db`.`album` (`album_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
 
 CONSTRAINT `fk_album_to_counter_tour1`
    FOREIGN KEY (`event_id`)
    REFERENCES `metallica_db`.`tour` (`event_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
	
CONSTRAINT `fk_tour_city1`
    FOREIGN KEY (`city_id`)
    REFERENCES `metallica_db`.`city` (`city_id`)

CONSTRAINT `fk_city_state1`
    FOREIGN KEY (`state_id`)
    REFERENCES `metallica_db`.`state` (`state_id`)

CONSTRAINT `fk_state_country`
    FOREIGN KEY (`country_id`)
    REFERENCES `metallica_db`.`country` (`country_id`)
