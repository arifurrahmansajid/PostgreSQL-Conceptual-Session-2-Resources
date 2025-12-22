-- Having --
select is_available, sum(stock) as total_stock
from products
group by is_available
having sum(stock) < 50;