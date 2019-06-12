ALTER TABLE metallica_db.tour
MODIFY COLUMN set_length varchar(14); 

ALTER TABLE metallica_db.tour
ADD COLUMN Column_13 INT; 

ALTER TABLE metallica_db.tour
MODIFY COLUMN longitude NUMERIC(20, 17);

ALTER TABLE metallica_db.tour
MODIFY COLUMN event_id INT AUTO_INCREMENT;  
