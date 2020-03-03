INSERT OVERWRITE TABLE foodratingspart
PARTITION (name)
SELECT food1, food2, food3, food4, id, name
FROM foodratings;

