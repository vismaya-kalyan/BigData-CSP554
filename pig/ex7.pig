food_ratings_w_place_names = JOIN food_ratings by placeid, food_places by placeid;
D = LIMIT food_ratings_w_place_names 6;
DUMP D;