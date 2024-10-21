#Write a query to identify products that have undergone shrink-flation over the last year. Shrink-flation is defined as a reduction in product size while maintaining or increasing the price.

#Include a flag for Shrinkflation. This should be a boolean value (True or False) indicating whether the product has undergone shrink-flation

#The output should have the columns Product_Name, Size_Change_Percentage, Price_Change_Percentage, and Shrinkflation_Flag.

#Round percentages to the nearest whole number and order the output on the product names alphabetically.

SELECT Product_Name, ROUND(((new_size-original_size)/original_size)*100) AS Size_Change_Percentage, ROUND(((new_price-original_price)/original_price
  )*100) AS Price_Change_Percentage, 
CASE 
  WHEN original_size>new_size AND original_price<=new_price
  THEN "True" 
  ELSE "False"
  END AS Shrinkflation_Flag 
FROM products 
WHERE original_size > 0 AND new_price> 0
ORDER BY product_name ASC;
