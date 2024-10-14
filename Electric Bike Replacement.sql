/*After about 10,000 miles, Electric bike batteries begin to degrade and need to be replaced.

Write a query to determine the amount of bikes that currently need to be replaced.*/


SELECT COUNT(bike_id) FROM bikes 
WHERE miles> 10000;
