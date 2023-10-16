CREATE TABLE menu_items (
  item text,
  prep_time INT,
  ingredient_cost decimal(4,2),
  sales INT,
  menu_price decimal(4,2)
);

INSERT INTO menu_items (item, prep_time, ingredient_cost, sales, menu_price)
VALUES ('omelette', 10, 1.50, 182, 7.99),
('tacos', 5, 2.00, 254, 8.99),
('oatmeal', 1, 0.50, 79, 5.99);

