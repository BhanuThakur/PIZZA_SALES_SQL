-- DETERMINE THE TOP 3 MOST ORDERED PIZZA TYPES BASED ON REVENUE FOR EACH PIZZA CATEGORY.

SELECT * FROM pizzahut.pizza_types;

select pt.category, pt.name , sum(od.quantity*p.price)  as revenue from pizza_types pt join pizzas p on pt.pizza_type_ID  = p.pizza_type_ID join order_details od 
on od.pizza_ID = p.pizza_ID group by pt.category, pt.name;

-- Let's convert it into Sub-Queries now.

select category, name, revenue , rank() over (partition by category order by revenue desc) as RN from
(select pt.category, pt.name , sum(od.quantity*p.price)  as revenue from pizza_types pt join pizzas p on pt.pizza_type_ID  = p.pizza_type_ID join order_details od 
on od.pizza_ID = p.pizza_ID group by pt.category, pt.name) as a;

-- i can not use where clause now, so i will convert this into table again.
select category, name, revenue , rn from
(select category, name, revenue , rank() over (partition by category order by revenue desc) as RN from
(select pt.category, pt.name , sum(od.quantity*p.price)  as revenue from pizza_types pt join pizzas p on pt.pizza_type_ID  = p.pizza_type_ID join order_details od 
on od.pizza_ID = p.pizza_ID group by pt.category, pt.name) as a) as b where rn<=3;

