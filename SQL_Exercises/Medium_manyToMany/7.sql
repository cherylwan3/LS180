SELECT SUM(services.price) AS gross
  FROM customers_services
  INNER JOIN services 
    ON services.id = customers_services.service_id;