/*I love chocolate and only want delicious baked goods that have chocolate in them!

Write a Query to return bakery items that contain the word "Chocolate".*/

SELECT * FROM bakery_items 
WHERE product_name LIKE "%Chocolate%";
