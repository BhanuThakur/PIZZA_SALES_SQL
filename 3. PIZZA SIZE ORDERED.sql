-- IDENTIFY THE MOST COMMON PIZZA SIZE ORDERED.

select p.size, sum(quantity) as Number_of_Orders from pizzas p join order_details od on p.pizza_id = od.pizza_id group by p.size order by 
count(quantity) desc limit 1; 