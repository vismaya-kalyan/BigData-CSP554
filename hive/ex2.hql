use MyDB;
CREATE TABLE IF NOT EXISTS MyDB.foodplaces (
id INT COMMENT 'id of restaurant',
place STRING COMMENT 'name of restaurant')
COMMENT 'This table contains restaurants'
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

