-- LIST TOP 5 MOST ORDERED PIZZA TYPES ALONG WITH THEIR QUANTITIES.

select pt.name , sum(od.quantity) Quantities from pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id join order_details od on p.pizza_id = od.pizza_id 
group by pt.name order by sum(od.quantity) desc limit 5;  