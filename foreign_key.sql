-- Child Table (Orders Table) --
create table orders(
  order_id serial primary key,
  user_id integer references users(user_id) ,
  order_amount numeric(10,2),
  order_date date,
  order_status varchar(20)
);

-- Parent Table (Users Table) --
create table users(
  user_id serial primary key,
  full_name varchar(100) not null,
  email varchar(100),
  city varchar(50),
  created_date date
);

-- Insert Values for Users --
INSERT INTO users (full_name, email, city, created_date)
VALUES
('Rahim Uddin', 'rahim@gmail.com', 'Dhaka', '2024-01-05'),
('Karim Hasan', 'karim@gmail.com', 'Chittagong', '2024-01-10'),
('Salma Akter', NULL, 'Dhaka', '2024-01-12'),
('Nusrat Jahan', 'nusrat@gmail.com', NULL, '2024-01-15'),
('Imran Hossain', 'imran@gmail.com', 'Khulna', '2024-01-18'),
('Tania Rahman', NULL, NULL, '2024-01-20'),
('Sabbir Ahmed', 'sabbir@gmail.com', 'Sylhet', '2024-01-22'),
('Farhana Islam', 'farhana@gmail.com', 'Rajshahi', '2024-01-25'),
('Arif Khan', NULL, 'Dhaka', '2024-01-28'),
('Mehedi Hasan', 'mehedi@gmail.com', NULL, '2024-01-30');

-- Insert Values for Orders --

INSERT INTO orders (user_id, order_amount, order_date, order_status)
VALUES
(1, 2500.00, '2024-02-01', 'Completed'),
(2, 1800.00, '2024-02-02', 'Pending'),
(3, 3200.00, '2024-02-03', 'Completed'),
(1, 1500.00, '2024-02-05', 'Cancelled'),
(5, 4200.00, '2024-02-06', 'Completed'),
(NULL, 3000.00, '2024-02-07', 'Pending'),
(7, 2100.00, '2024-02-08', 'Completed'),
(2, NULL, '2024-02-09', 'Pending'),
(8, 5000.00, NULL, 'Completed'),
(NULL, NULL, NULL, 'Draft');




