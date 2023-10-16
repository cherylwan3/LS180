SELECT services.description, 
  count(customers_services.customer_id) AS count
  FROM services
  INNER JOIN customers_services
    ON services.id = customers_services.service_id
  GROUP BY services.description
  HAVING count(customers_services.customer_id) >= 3
  ORDER BY services.description;


-- BOOK METHOD

SELECT description, COUNT(service_id)
FROM services
LEFT OUTER JOIN customers_services
             ON services.id = service_id
GROUP BY description
HAVING COUNT(customers_services.customer_id) >= 3
ORDER BY description;