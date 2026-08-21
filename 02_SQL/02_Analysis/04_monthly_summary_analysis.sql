----VIEW 2. MONTHLY_SALES_SUMMARY
--Business Objective ;Analyse monthly sales performance to identify business trends over time.

---Q1. which month generated the highest sales
select
     date_trunc('month', order_date) as month,
	 sum(sales) as total_sales
from superstore
group by date_trunc('month', order_date)
order by total_sales desc;

---Q2. which month generated the highest profit
select
     date_trunc('month', order_date) as month,
	 sum(profit) as total_profit
from superstore
group by date_trunc('month', order_date)
order by total_profit desc;

---Q3. which months processed the highest number of orders?
select
     date_trunc('month', order_date) as month,
	 count(order_id) as total_orders
from superstore
group by date_trunc('month',order_date)
order by total_orders desc;

---Q4. which month sold the highest quantity of products
select 
     date_trunc('month', order_date) as month,
	 sum(quantity) as total_products_sold
from superstore
group by date_trunc('month', order_date)
order by total_products_sold desc;

---Q5. which month incurred the highest shipping cost
select
     date_trunc('month', order_date) as month,
	 sum(shipping_cost) as total_shipping_cost
from superstore
group by date_trunc('month', order_date)
order by total_shipping_cost desc ;