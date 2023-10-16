SELECT Round((count(DISTINCT tickets.customer_id) / count(DISTINCT customers.id)::decimal) * 100, 2) 
  FROM customers
  LEFT JOIN tickets
    ON customers.id = tickets.customer_id;

    -- Round((count(DISTINCT customers.id) / count(customers.id)::decimal), 2) 