-- Subqueries --
select order_id, order_amount
from orders
where order_amount > (
  select avg(order_amount) from orders
);