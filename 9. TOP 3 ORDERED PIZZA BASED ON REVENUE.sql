-- DETERMINE THE TOP 3 MOST ORDERED PIZZA TYPES BASED ON REVENUE.

SELECT * FROM pizzahut.pizza_types;
SELECT * FROM pizzahut.pizzas;
SELECT * FROM pizzahut.order_details;

select pt.name as PIZZA_TYPES, round(sum(od.quantity*p.price),0) as TOTAL_REVENUE from pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id join 
order_details od on p.pizza_id = od.pizza_id group by pt.name order by sum(od.quantity*p.price) desc limit 3;  