#In the United States, fast food is the cornerstone of it's very society. Without it, it would cease to exist.

#But which region spends the most money on fast food?

#Write a query to determine which region spends the most amount of money on fast food.

WITH CTE AS( 
  SELECT region, SUM(fast_food_millions) AS Total FROM food_regions
  GROUP BY region
  ORDER BY Total DESC LIMIT 1
)
SELECT region FROM CTE ;
