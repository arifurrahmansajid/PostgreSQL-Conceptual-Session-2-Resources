create table products(
  product_id serial primary key,
  product_code integer unique,
  product_name varchar(50) not null,
  product_description text,
  price numeric(10,2) check (price >= 0),
  discount_price real,
  stock integer check (stock >= 0),
  is_available boolean default true
);
INSERT INTO products
(product_code, product_name, product_description, price, discount_price, stock, is_available)
VALUES
(1001, 'Laptop', 'High performance gaming laptop', 75000.00, 72000.50, 15, true),
(1002, 'Smartphone', 'Android smartphone with AMOLED display', 42000.00, 39999.99, 30, true),
(1003, 'Tablet', '10-inch tablet for work and entertainment', 28000.00, 26500.00, 20, true),
(1004, 'Wireless Mouse', 'Ergonomic wireless mouse', 1500.00, 1350.00, 50, true),
(1005, 'Keyboard', 'Mechanical keyboard with RGB lighting', 4500.00, 4200.00, 0, false),
(1006, 'Monitor', '27-inch full HD LED monitor', 22000.00, 21000.00, 12, true),
(1007, 'Headphones', 'Noise cancelling over-ear headphones', 8500.00, 7999.00, 18, true),
(1008, 'Webcam', 'HD webcam for video conferencing', 3800.00, 3600.00, 22, true),
(1009, 'Desk Lamp', 'LED desk lamp with adjustable brightness', 2500.00, 2300.00, 14, true),
(1010, 'External SSD', 'Portable 1TB external SSD', 16000.00, 15500.00, 0, false);



