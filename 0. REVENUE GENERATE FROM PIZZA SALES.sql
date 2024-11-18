-- CALCULATE TOTAL REVENUE GENERATE FROM PIZZA SALES.

select od.quantity , p.price from order_details od join pizzas p;   

-- now multiply total quantity ordered with the price of pizza.

select (quantity *p.price) as Total_Sales from order_details od join pizzas p on od.pizza_id = p.pizza_id;   


-- But , we need Sum of total Sales.
select sum(quantity *p.price) as Total_Sales from order_details od join pizzas p on od.pizza_id = p.pizza_id;  

-- Let's round it in two decimal places.
select round(sum(quantity *p.price),2) as Total_Sales from order_details od join pizzas p on od.pizza_id = p.pizza_id;    