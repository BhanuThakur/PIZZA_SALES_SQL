-- FIND OUT THE AVERAGE OF QUANTITY SOLD PER DAY.

SELECT * FROM pizzahut.orders;
SELECT * FROM pizzahut.order_details;

-- First we Calculate the Number of order per day.
select (o.date) , sum(od.quantity) as Quantity from orders o join order_details od on o.order_id = od.order_id group by (o.date) ;

-- finally , we find out the avg of all quantity.

select avg(quantity) from
(select (o.date) , sum(od.quantity) as Quantity from orders o join order_details od on o.order_id = od.order_id group by (o.date))  as order_quantity;

-- let's round off it in 2 decimal places. /

select round(avg(quantity),2) as Average_Quantity from
(select (o.date) , sum(od.quantity) as Quantity from orders o join order_details od on o.order_id = od.order_id group by (o.date))  as order_quantity;

