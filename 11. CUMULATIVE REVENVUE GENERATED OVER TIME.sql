-- 	ANALYZE THE CUMULATIVE REVENVUE GENERATED OVER TIME.

SELECT * FROM pizzahut.orders;
SELECT * FROM pizzahut.pizzas;
SELECT * FROM pizzahut.order_details;


select o.date, sum(od.quantity*p.price) revenue from pizzas p join order_details od on p.pizza_id = od.pizza_id join orders o on od.order_id = o.order_id group by 
o.date order by o.date;

-- Let's make this a sub-query.

select date , sum(revenue) over(order by date) as CUM_REVENUE from
(select o.date, sum(od.quantity*p.price) revenue from pizzas p join order_details od on p.pizza_id = od.pizza_id join orders o on od.order_id = o.order_id group by 
o.date order by o.date) as sales;
