SELECT CAST(avg(wingspan) AS DECIMAL(3,1)) AS "round", min(wingspan), max(wingspan)
FROM birds;

-- BOOK ANSWER
SELECT round(avg(wingspan), 1), min(wingspan), max(wingspan) FROM birds;