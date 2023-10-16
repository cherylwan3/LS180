SELECT customers.id, customers.email, 
    COUNT(DISTINCT tickets.event_id)
  FROM customers
  INNER JOIN tickets
    on tickets.customer_id = customers.id
  GROUP BY customers.id
  HAVING COUNT(DISTINCT tickets.event_id) = 3;