SELECT genre, ROUND(AVG(duration)) AS average_duration
FROM films GROUP BY genre;