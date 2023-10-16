SELECT orders.quantity, products.name
  FROM products 
  INNER JOIN orders 
    ON products.id = orders.product_id;
