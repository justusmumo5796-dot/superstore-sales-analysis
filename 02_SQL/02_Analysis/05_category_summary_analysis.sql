----VIEW 3. CATEGORY SUMMARY 
--Business Objective;  Evaluate the performance of each product category.

---Q1. which product category generated the highest total sales
select
     category,
	 sum(sales) as total_sales
from superstore
group by category
order by total_sales;


---Q2. which product category generated the highest total profit
select 
     category,
	 sum(profit) as total_profit
from superstore
group by category
order by total_profit desc;


---Q3. which product category sold the highest quantity of products?
select
     category,
	 sum(quantity) as total_products_sold
from superstore
group by category
order by total_products_sold desc;


---Q4. which product category recieved the highest average discount?
select
     category,
	 round(avg(discount) * 100,2 ) as average_discount
from superstore
group by category
order by average_discount desc;


---	q5. which product category provides the best balance between sales and profit?
select
     category,
	 round((sum(profit) / nullif(sum(sales),0)) * 100,2) as profit_margin
from superstore
group by  category
order by profit_margin desc

