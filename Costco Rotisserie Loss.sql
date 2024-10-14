/*Costco is known for their rotisserie chickens they sell, not just because they are delicious, but because they are a loss leader in this area.

This means they actually lose money in selling the chickens, but they are okay with this because they make up for that in other areas.

Using the sales table, calculate how much money they have lost on their rotisserie chickens this year. Round to the nearest whole number.*/

SELECT Round(SUM(lost_revenue_millions), 0)FROM sales ;
