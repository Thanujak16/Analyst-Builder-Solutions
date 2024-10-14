/*Write a query that returns all of the stores whose average yearly revenue is greater than one million dollars.

Output the store ID and average revenue. Round the average to 2 decimal places.

Order by store ID.*/

SELECT store_id, Round(AVG(revenue), 2) FROM stores 
  GROUP BY store_id
  HAVING AVG(revenue)> 1000000;
