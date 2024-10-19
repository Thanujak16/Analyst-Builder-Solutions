#Cars need to be inspected every year in order to pass inspection and be street legal. If a car has any critical issues it will fail inspection or if it has more than 3 minor issues it will also fail.

#Write a query to identify all of the cars that passed inspection.

#Output should include the owner name and vehicle name. Order by the owner name alphabetically.

SELECT owner_name,vehicle FROM inspections 
WHERE minor_issues <= 3 AND critical_issues=0
ORDER BY owner_name ASC;
