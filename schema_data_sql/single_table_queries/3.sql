SELECT state, count(state) AS count FROM people
GROUP BY state 
ORDER BY count(state) DESC LIMIT 10;