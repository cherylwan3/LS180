SELECT SUM(services.price) AS sum
  FROM customers_services
  INNER JOIN services 
    ON services.id = service_id
  WHERE services.price > 100;




SELECT SUM(services.price) AS sum
  FROM customers
  CROSS JOIN services
  WHERE services.price > 100;
    