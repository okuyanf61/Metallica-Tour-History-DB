CREATE TABLE IF NOT EXISTS acts (
    `act_name` VARCHAR(47) CHARACTER SET utf8,
    `act_id` INT
);

CREATE TABLE IF NOT EXISTS album (
    `album_id` INT,
    `album_name` VARCHAR(32) CHARACTER SET utf8
);

CREATE TABLE IF NOT EXISTS album_to_counter (
    `event_id` INT,
    `album_id` INT,
    `count` INT
);

CREATE TABLE IF NOT EXISTS city (
    `city_id` INT,
    `city_name` VARCHAR(22) CHARACTER SET utf8,
    `state_id` INT
);

CREATE TABLE IF NOT EXISTS country (
    `country_id` INT,
    `country_name` VARCHAR(20) CHARACTER SET utf8
);

CREATE TABLE IF NOT EXISTS event_to_inst (
    `event_id` INT,
    `instrument_id` INT
);

CREATE TABLE IF NOT EXISTS event_url (
    `event_id` INT,
    `URL` VARCHAR(75) CHARACTER SET utf8
);

CREATE TABLE IF NOT EXISTS instrument (
    `instrument_type` INT,
    `instrument_name` VARCHAR(6) CHARACTER SET utf8
);

CREATE TABLE IF NOT EXISTS song (
    `song_name` VARCHAR(34) CHARACTER SET utf8,
    `song_id` INT
);

CREATE TABLE IF NOT EXISTS state (
    `state_id` INT,
    `state_name` VARCHAR(22) CHARACTER SET utf8,
    `country_id` INT
);

CREATE TABLE IF NOT EXISTS tour (
    `date` DATETIME,
    `venue` VARCHAR(61) CHARACTER SET utf8,
    `festival` VARCHAR(55) CHARACTER SET utf8,
    `latitude` VARCHAR(36) CHARACTER SET utf8,
    `longitude` VARCHAR(20) CHARACTER SET utf8,
    `tour` VARCHAR(36) CHARACTER SET utf8,
    `set_length` VARCHAR(14) CHARACTER SET utf8,
    `has_doodle` VARCHAR(5) CHARACTER SET utf8,
    `has_medley` VARCHAR(5) CHARACTER SET utf8,
    `event_id` INT,
    `city_id` INT
);

CREATE TABLE IF NOT EXISTS tour_to_act (
    `event_id` INT,
    `act_id` INT
);

CREATE TABLE IF NOT EXISTS tour_to_song (
    `event_id` INT,
    `song_id` INT,
    `type` VARCHAR(3) CHARACTER SET utf8
);