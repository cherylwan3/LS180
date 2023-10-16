SELECT e.name AS name, count(t.id) AS popularity
FROM events AS e 
LEFT OUTER JOIN tickets AS t
  ON e.id = t.event_id
GROUP BY e.name ORDER BY popularity DESC;



