-- Inner Join --
select users.full_name, orders.order_amount, orders.order_status
from orders 
inner join users
on users.user_id = orders.user_id;

-- Left Join --
select users.full_name, orders.order_amount, orders.order_status
from orders 
left join users
on users.user_id = orders.user_id;

-- Right Join --
select users.full_name, orders.order_amount, orders.order_status
from orders 
right join users
on users.user_id = orders.user_id;

-- Full join --
select users.full_name, orders.order_amount, orders.order_status
from users 
full join orders
on users.user_id = orders.user_id;

-- Cross Join --
select users.full_name, orders.order_amount, orders.order_status
from users 
cross join orders;


-- Natural Join --
select users.full_name, orders.order_amount, orders.order_status
from users 
natural join orders;

-- on users.user_id = orders.user_id;















