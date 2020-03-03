select foodplaces.place,
 avg(foodratings.food2) as Average
from foodratings join foodplaces on foodratings.id = foodplaces.id
 where foodplaces.place = "Soup Bowl"
 group by place;
