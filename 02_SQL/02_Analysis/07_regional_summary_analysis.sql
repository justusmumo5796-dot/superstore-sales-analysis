-----VIEW 5.REGIONAL SUMMARY
--Business Objective; Evaluate business performance across different regions.

---Q1. which region generated highest sales?
select
     region,
	 sum(sales) as total_sales
from superstore
group by region
order by total_sales desc;

---Q2. which region generated highest profit?
select 
     region,
	 sum(profit) as total_profit
from superstore
group by region
order by total_profit desc;

---Q3. which region processed the highest number of orders and sold the highest quantity of products?
select
     region,
	 count(distinct order_id) as total_orders,
	 sum(quantity) as total_quantity_sold
from superstore
group by region
order by total_orders desc,
total_quantity_sold desc;

---Q4. which region incurred the highest shipping cost?
select
     region,
	 sum(shipping_cost) as total_shipping_cost
from superstore
group by region
order by total_shipping_cost desc;

---Q5. which region provides the balance between sales and profit?
select
     region,
	 sum(sales) as total_sales,
	 sum(profit) as total_profit,
	 round((sum(profit) / nullif(sum(sales) , 0)) * 100, 2) as profit_margin
from superstore
group by region
order by profit_margin desc;
