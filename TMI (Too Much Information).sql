/*Often when you're working with customer information you'll want to sell that data to a third party. Sometimes it is illegal to give away sensitive information such as a full name.

Here you are given a table that contains a customer ID and their full name.

Return the customer ID with only the first name of each customer.*/

SELECT  customer_id, substring_index(full_name, " ", 1) FROM customers  ;
