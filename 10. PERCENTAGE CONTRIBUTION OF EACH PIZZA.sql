-- CALLCULATE THE PERCENTAGE CONTRIBUTION OF EACH PIZZA TYPE TO TOTAL REVENUE. 

SELECT * FROM pizzahut.pizza_types;
SELECT * FROM pizzahut.pizzas;
SELECT * FROM pizzahut.order_details;


select pt.category , round(sum(od.quantity*p.price)/817860*100,2) from pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id join order_details od on
p.pizza_id = od.pizza_id group by pt.category;

select sum(quantity*price) from pizzas p join order_details od on p.pizza_id = od.pizza_id; 


-- OTHER WAY
select pt.category , round(sum(od.quantity*p.price)/(select (sum(quantity*price)) from pizzas p join order_details od on p.pizza_id = od.pizza_id)*100,1) as Contribution
from pizza_types pt join pizzas p on pt.pizza_type_id = p.pizza_type_id join order_details od on
p.pizza_id = od.pizza_id group by pt.category;






