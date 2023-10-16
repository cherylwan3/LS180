SELECT customers.name, 
  STRING_AGG(services.description, ', ') AS services
  FROM customers
  LEFT OUTER JOIN customers_services
    ON customers.id = customer_id
  LEFT OUTER JOIN services
    ON service_id = services.id
  GROUP BY customers.id ORDER BY customers.id;