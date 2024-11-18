-- DETERMINE THE DISTRIBUTION OF ORDERS BY HOUR OF THE DAY. 

select hour(time) as HOUR ,count(order_ID) as ORDER_COUNT from orders group by hour(time) order by count(order_ID);

 