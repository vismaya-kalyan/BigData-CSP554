food_ratings_subset = FOREACH food_ratings GENERATE name, f4;
STORE food_ratings_subset INTO '/user/hadoop/fr_subset' USING PigStorage(',');
D = food_ratings_subset LIMIT 6;
DUMP D;