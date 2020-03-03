food_ratings_filtered = FILTER food_ratings BY (f1 < 20) AND (f3 > 5);
D = LIMIT food_ratings_filtered 6;
DUMP D;