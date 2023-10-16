SELECT id, title, year, genre, director FROM films
WHERE POSITION('John' IN director) > 0;