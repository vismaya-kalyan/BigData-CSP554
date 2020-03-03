food_ratings = LOAD '/user/hadoop/truck_event_text_partition.csv' USING PigStorage(',')
AS (name:chararray, f1:int, f2:int, f3:int, f4:int, placeid:int);
DESCRIBE truck_events;

