/*Herschel's Manufacturing Plant has hit some hard times with the economy and unfortunately they need to let some people go.

They figure the younger employees need their jobs more as they are growing families so they decide to let go of their 3 oldest employees. They have more experience and will be able to land on their feet easier (and they had to pay them more).

Write a query to identify the ids of the three oldest employees.

Order output from oldest to youngest.*/

SELECT employee_id FROM employees 
ORDER BY birth_date	 ASC LIMIT 3;
