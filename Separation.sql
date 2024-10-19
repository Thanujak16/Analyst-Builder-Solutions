#Data was input incorrectly into the database. The ID was combined with the First Name.

#Write a query to separate the ID and First Name into two separate columns.

#Each ID is 5 characters long.


SELECT LEFT(id, 5), RIGHT(id, LENGTH(id)-LENGTH(LEFT(id, 5))) FROM bad_data ;
