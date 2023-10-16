SELECT customers.*
  FROM customers
    LEFT OUTER JOIN customers_services
      ON customers.id = customers_services.customer_id;
    WHERE customers_services.service_id IS NULL;
