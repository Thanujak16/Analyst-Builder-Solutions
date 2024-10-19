#Tech companies have been laying off employees after a large surge of hires in the past few years.

#Write a query to determine the percentage of employees that were laid off from each company.

#Output should include the company and the percentage (to 2 decimal places) of laid off employees.

#Order by company name alphabetically.

SELECT company, ROUND((employees_fired/company_size)*100,2) FROM tech_layoffs
ORDER BY company ASC;
