SELECT DISTINCT customers.*
  FROM customers
    INNER JOIN customers_services
      ON customers.id = customer_id