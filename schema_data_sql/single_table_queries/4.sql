SELECT substring(email from '@(.*)') AS domain, 
        count(id) AS count
FROM people
GROUP BY domain
ORDER BY count DESC;