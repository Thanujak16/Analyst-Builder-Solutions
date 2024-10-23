#Kroger's is a very popular grocery chain in the US. They offer a membership card in exchange for a discount on select items. Customers can still shop at Krogers without the card.
#Write a query to find the percentage of customers who shop at Kroger's who also have a Kroger's membership card. Round to 2 decimal places.

SELECT 100-ROUND((COUNT(kroger_id)-COUNT(has_member_card="Y"))/COUNT(kroger_id)*100, 2) FROM customers ;
