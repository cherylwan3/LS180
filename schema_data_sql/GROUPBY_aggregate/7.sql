SELECT (Round(year / 10)) * 10 AS decade, ROUND(AVG(duration)) AS average_duration
FROM films GROUP BY decade ORDER BY decade ASC;
