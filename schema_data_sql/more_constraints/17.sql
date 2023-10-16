CREATE TABLE ppl (
  name varchar(255),
  height numeric(3,1) DEFAULT 0
);

ALTER TABLE ppl ADD CONSTRAINT height_check 
  CHECK (height BETWEEN 150 AND 180);

INSERT INTO ppl (name) VALUES ('anne');