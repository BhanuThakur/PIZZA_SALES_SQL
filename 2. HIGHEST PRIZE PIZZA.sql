-- IDENTIFY THE HIGHEST PRIZE PIZZA.

select pt.name , p.price from pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id order by p.price desc limit 1;

-- Other way could be...

select pt.name , p.price from pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id where p.price = (select max(p.price) from pizzas) 
order by p.price desc limit 1;