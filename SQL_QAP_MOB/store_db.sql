CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  product_name TEXT,
  price DECIMAL,
  stock_quantity INTEGER
);

CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);


CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  order_date DATE
);

CREATE TABLE order_items (
  order_id INTEGER,
  product_id INTEGER,
  quantity INTEGER
);

INSERT INTO products (product_name, price, stock_quantity) VALUES
('Laptop', 1000.00, 10),
('Smartphone', 500.00, 20),
('Headphones', 50.00, 50),
('Monitor', 150.00, 15),
('Keyboard', 25.00, 30);


SELECT * FROM products;

INSERT INTO customers (first_name, last_name, email) VALUES
('Emily', 'Clark', 'emily@example.com'),
('Daniel', 'Wright', 'daniel@example.com'),
('Sophia', 'Hill', 'sophia@example.com'),
('James', 'Green', 'james@example.com');

SELECT * FROM customers;


INSERT INTO orders (customer_id, order_date) VALUES
(1, '2023-03-01'),
(2, '2023-03-02'),
(3, '2023-03-03'),
(4, '2023-03-04'),
(1, '2023-03-05');

SELECT * FROM orders;

SELECT * FROM orders;
SELECT * FROM products;


INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(2, 5, 1),
(3, 4, 1),
(3, 3, 1),
(4, 1, 1),
(4, 2, 1),
(5, 5, 2),
(5, 3, 1);

SELECT * FROM order_items;

SELECT * FROM customers;

SELECT * FROM products;


SELECT products.product_name, order_items.quantity
FROM order_items
JOIN products ON order_items.product_id = products.id
WHERE order_items.order_id = 1;


SELECT orders.id AS order_id, products.product_name, order_items.quantity
FROM orders
JOIN order_items ON orders.id = order_items.order_id
JOIN products ON order_items.product_id = products.id
WHERE orders.customer_id = 1;

