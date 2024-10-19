#Write a query to determine how many direct reports each Manager has.

#Note: Managers will have "Manager" in their title.

#Report the Manager ID, Manager Title, and the number of direct reports in your output.

SELECT M.employee_id, M.position, COUNT(M.employee_id ) AS direct_reports
FROM direct_reports M
INNER JOIN direct_reports E 
ON E.managers_id = M.employee_id
WHERE M.position LIKE "%Manager%"
GROUP BY M.managers_id, M.position
