CREATE TABLE directors_films (
  id serial PRIMARY KEY,
  director_id integer REFERENCES directors (id) ON DELETE CASCADE,
  film_id integer REFERENCES films (id) ON DELETE CASCADE,
  UNIQUE(director_id, film_id)
);

INSERT INTO directors_films (film_id, director_id)
VALUES (1, 1), (2, 2), (3,3), (4, 4), (5, 5), (6, 6), 
(7, 3), (8, 7), (9, 8), (10, 4);


