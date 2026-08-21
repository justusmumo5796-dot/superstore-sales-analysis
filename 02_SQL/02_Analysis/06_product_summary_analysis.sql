---VIEW 4.PRODUCT SUMMARY
--Business Objective; Identify the best-performing and worst-performing products.

---Q1. which product generated the highest total sales?
select
     product_name,
	 sum(sales) as total_sales
from superstore
group by product_name
order by total_sales desc
limit 10;

---Q2. which products generated the highest total profit?
select
     product_name,
	 sum(profit) as total_profit
from superstore
group by product_name
order by total_profit desc
limit 10;
	 

---Q3. which products are generating losses?
select
     product_name,
	 sum(profit) as total_profit
from superstore
group by product_name
having sum(profit) < 0
order by total_profit asc
limit 10;


---Q4. which product sold the highest quantity?
select
     product_name,
	 sum(quantity) as total_quantity_sold
from superstore
group by product_name
order by total_quantity_sold desc
limit 10;

---Q5. which product provides the best balance between sales and profit?
select
     product_name,
	 sum(sales) as total_sale,
	 sum(profit) as total_profit,
	 round((sum(profit) / nullif(sum(sales) ,0)) * 100, 2) as profit_margin
from superstore
group by product_name
order by profit_margin desc;