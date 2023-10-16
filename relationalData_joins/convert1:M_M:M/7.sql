SELECT directors.name AS director, COUNT(directors_films.film_id) as films
  FROM directors
    INNER JOIN directors_films 
      ON directors.id = directors_films.director_id
  GROUP BY directors.name
  ORDER BY films DESC, director ASC;