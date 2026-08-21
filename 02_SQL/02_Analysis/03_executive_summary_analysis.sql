--VIEW 1 . EXECUTIVE_SUMMARY

---Q1.what are the companies total sales,total profit and overal profit margins?
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin
FROM superstore;

---Q2.How many orders were placed, and how many products were sold during the analysis period?
select 
     count(distinct order_id) as total_orders,
	 sum(quantity) as total_products_sold
from superstore;

---Q3.How many unique customers made purchases?
select 
     count(distinct customer_id) as unique_customers
from superstore;

---Q4.How many unique products were sold?
select
     count(distinct product_id) as unique_products
from superstore;

---Q5. What were the average discount offered and the total shipping cost incurred?
select 
     round(avg(discount) * 100,2) as average_discount,
	 sum(shipping_cost) as total_shipping_cost
from superstore;

select count(*) from superstore