select name,
 min(food2) as Minimum,
 avg(food2) as Average,
 max(food2) as Maximum
from foodratingspart
 where name = "Mel" or name = "Jill"
 group by name;
