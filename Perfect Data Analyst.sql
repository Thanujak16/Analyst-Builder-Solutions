#Return all the candidate IDs that have problem solving skills, SQL experience, knows Python or R, and has domain knowledge.
#Order output on IDs from smallest to largest.

SELECT candidate_id FROM candidates 
WHERE sql_experience ="X" AND problem_solving ="X" AND( r_programming ="X" OR python ="X") AND domain_knowledge ="X"
ORDER BY candidate_id ASC;
