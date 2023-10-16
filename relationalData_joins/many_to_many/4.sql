--       name        | book_count |                                 book_titles
-- ------------------+------------+-----------------------------------------------------------------------------
-- Biography         |          2 | Einstein: His Life and Universe, Sally Ride: America's First 


SELECT categories.name, count(books.id) as book_count, 
string_agg(books.title, ', ') AS book_titles
  FROM books
    INNER JOIN books_categories ON books.id = books_categories.book_id
    INNER JOIN categories ON books_categories.category_id = categories.id
  GROUP BY categories.name ORDER BY categories.name;