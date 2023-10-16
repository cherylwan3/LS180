SELECT DISTINCT genre, count(films.id) FROM films
GROUP BY genre ORDER BY count(genre) DESC;