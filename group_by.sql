-- Group By --
select is_available, count(*) as total_products
from products
group by is_available;


select is_available, sum(stock) as total_stock
from products
group by is_available;
