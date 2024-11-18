-- CATEGORIES WISE DISCTRIBUTION OF PIZZAS.


select * from pizza_types;

select category,count(category) from pizza_types group by category;  