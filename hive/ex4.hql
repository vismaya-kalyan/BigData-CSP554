CREATE TABLE IF NOT EXISTS MyDB.foodratingspart (
food1 INT,
food2 INT,
food3 INT,
food4 INT,
id INT)
PARTITIONED BY (name STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE;


