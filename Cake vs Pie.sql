/*Marcie's Bakery is having a contest at her store. Whichever dessert sells more each day will be on discount tomorrow. She needs to identify which dessert is selling more.

Write a query to report the difference between the number of Cakes and Pies sold each day.

Output should include the date sold, the difference between cakes and pies, and which one sold more (cake or pie). The difference should be a positive number.

Return the result table ordered by Date_Sold.

Columns in output should be date_sold, difference, and sold_more.*/


with cake as(
 select date_sold, product, amount_sold from desserts
  where product = "Cake"
), pie  as(
 select date_sold, product, amount_sold from desserts
  where product = "Pie"
)

SELECT c.date_sold,
CASE
WHEN c.amount_sold is NULL THEN p.amount_sold
WHEN p.amount_sold is NULL THEN c.amount_sold
WHEN p.amount_sold is NOT NULL AND c.amount_sold IS NOT NULL THEN ABS(c.amount_sold-p.amount_sold) END
AS Difference, 

CASE
WHEN c.amount_sold is NULL THEN p.product
WHEN p.amount_sold is NULL THEN c.product

WHEN p.amount_sold> c.amount_sold THEN p.product
WHEN p.amount_sold< c.amount_sold THEN c.product END AS sold_more

FROM cake c INNER JOIN pie p
ON c.date_sold = p.date_sold 
ORDER BY c. date_sold ASC;
