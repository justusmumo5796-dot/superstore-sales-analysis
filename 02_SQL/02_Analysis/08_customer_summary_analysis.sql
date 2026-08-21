----VIEW 6. CUSTOMER_SUMMARY
--Business Objective; Analyse customer purchasing behaviour and identify high-value customers.

---Q1. which customers generated the highest total sales
select
     customer_name,
	 sum(sales) as total_sales
from superstore
group by customer_name
order by total_sales desc
limit 10;

---Q2. which customers generated the highest total profit?
select
     customer_name,
	 sum(profit) as total_profit
from superstore
group by customer_name
order by total_profit desc
limit 10;

---Q3. which customers placed then highest number of orders?
select
     customer_name,
	 count(distinct order_id) as total_orders
from superstore
group by customer_name
order by total_orders desc
limit 10;

---Q4. which customer segment generated the highest sales and profit?
select
     segment,
	 sum(sales) as total_sales,
	 sum(profit) as total_profit
from superstore
group by segment
order by total_sales desc,total_profit desc;

---Q5. which customers perchased the highest quantity of products?
select
     customer_name,
	 sum(quantity) as total_products
from superstore
group by customer_name
order by total_products desc
limit 10;
 

