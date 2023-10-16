ALTER TABLE films ADD CONSTRAINT director_name
  CHECK (length(director) >= 3 AND position(' ' in director) > 0);