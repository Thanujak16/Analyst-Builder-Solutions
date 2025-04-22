/*Write a query to find all dates with higher temperatures compared to the previous dates (yesterday).*/

WITH cte AS(
SELECT date, temperature,
   LEAD( temperature, 1) OVER( ORDER BY date ASC ) as new_temperature,
  LEAD( date, 1) OVER( ORDER BY date ASC ) as next_Day
   FROM temperatures
 )

SELECT next_Day FROM cte 
WHERE new_temperature>temperature;
