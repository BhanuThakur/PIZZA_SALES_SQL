-- JOIN THE NECESSARY TABLES TO FIND THE TOTAL QUANTITY OF EACH PIZZA CATEGORY ORDERED.

select pt.category , sum(od.quantity) Quantities from pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id join order_details od on p.pizza_id = od.pizza_id 
group by pt.category order by sum(od.quantity) desc;  