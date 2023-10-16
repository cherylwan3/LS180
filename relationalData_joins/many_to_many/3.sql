INSERT INTO categories (name)
VALUES ('Space Exploration'), ('Cookbook'), ('South Asia');

 id |       name        
----+-------------------
  1 | Nonfiction
  2 | Fiction
  3 | Fantasy
  4 | Classics
  5 | Biography
  6 | Physics
  7 | Space Exploration
  8 | Cookbook
  9 | South Asia
(9 rows)

ALTER TABLE books ALTER COLUMN title TYPE text;

INSERT INTO books (title, author)
VALUES ('Sally Ride: America''s First Woman in Space', 'Lynn Sherr'),
('Jane Eyre', 'Charlotte Brontë'),
('Vij''s: Elegant and Inspired Indian Cuisine', 'Meeru Dhalwala and Vikram Vij');

 id |                   title                    |            author             
----+--------------------------------------------+-------------------------------
  1 | A Tale of Two Cities                       | Charles Dickens
  2 | Harry Potter                               | J. K. Rowling
  3 | Einstein: His Life and Universe            | Walter Isaacson
  4 | Sally Ride: America's First Woman in Space | Lynn Sherr
  5 | Jane Eyre                                  | Charlotte Brontë
  6 | Vij's: Elegant and Inspired Indian Cuisine | Meeru Dhalwala and Vikram Vij
(6 rows)

INSERT INTO books_categories (book_id, category_id)
VALUES
(4, 5), (4, 1), (4, 7), 
(5, 2), (5, 4),
(6, 8), (6, 1), (6, 9);


-- book method


ALTER TABLE books ALTER COLUMN title TYPE text;

INSERT INTO books (title, author) VALUES ('Sally Ride: America''s First Woman in Space', 'Lynn Sherr');
INSERT INTO books_categories VALUES (4, 1);
INSERT INTO books_categories VALUES (4, 5);
INSERT INTO categories (name) VALUES ('Space Exploration');
INSERT INTO books_categories VALUES (4, 7);

INSERT INTO books (title, author) VALUES ('Jane Eyre', 'Charlotte Brontë');
INSERT INTO books_categories VALUES (5, 2);
INSERT INTO books_categories VALUES (5, 4);

INSERT INTO books (title, author) VALUES ('Vij''s: Elegant and Inspired Indian Cuisine', 'Meeru Dhalwala and Vikram Vij');
INSERT INTO categories (name) VALUES ('Cookbook');
INSERT INTO categories (name) VALUES ('South Asia');
INSERT INTO books_categories VALUES (6, 1);
INSERT INTO books_categories VALUES (6, 8);
INSERT INTO books_categories VALUES (6, 9);
