food_places = LOAD '/user/hadoop/truck_event_text_partition.csv' USING PigStorage(',')
AS (placeid:int, placename:chararray);
DESCRIBE food_places;