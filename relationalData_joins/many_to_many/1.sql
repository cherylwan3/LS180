ALTER TABLE books_categories
  ALTER COLUMN book_id SET NOT NULL;

ALTER TABLE books_categories
  ALTER COLUMN category_id SET NOT NULL;

ALTER TABLE books_categories
  DROP CONSTRAINT "books_categories_book_id_fkey",
  ADD CONSTRAINT "books_categories_book_id_fkey"
  FOREIGN KEY ("book_id")
  REFERENCES books(id)
  ON DELETE CASCADE;

ALTER TABLE books_categories
  DROP CONSTRAINT "books_categories_category_id_fkey",
  ADD CONSTRAINT "books_categories_category_id_fkey"
  FOREIGN KEY ("category_id")
  REFERENCES categories(id)
  ON DELETE CASCADE;