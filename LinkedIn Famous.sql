### Write a query to determine the popularity of a post on LinkedIn

Popularity is defined by number of actions (likes, comments, shares, etc.) divided by the number impressions the post received * 100.

If the post receives a score higher than 1 it was very popular.

Return all the post IDs and their popularity where the score is 1 or greater.

Order popularity from highest to lowest. ###

SELECT post_id, (actions/impressions)*100 AS popularity 
FROM linkedin_posts 
WHERE (actions/impressions)*100 >=1
ORDER BY popularity DESC;
