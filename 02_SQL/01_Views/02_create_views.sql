
CREATE OR REPLACE VIEW executive_summary AS
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) / SUM(sales)) * 100,2) AS profit_margin,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_products_sold,
    COUNT(DISTINCT customer_id) AS unique_customers,
    COUNT(DISTINCT product_id) AS unique_products,
    ROUND(AVG(discount) * 100,2) AS average_discount,
    SUM(shipping_cost) AS total_shipping_cost
FROM superstore;



-- View 2: Monthly Sales
-- Purpose: Summarises monthly sales performance.
CREATE OR REPLACE VIEW monthly_sales AS
SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    SUM(shipping_cost) AS total_shipping_cost
FROM superstore
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;



-- View 3: Category Summary
-- Purpose: Summarises performance by product category.
CREATE OR REPLACE VIEW category_summary As
SELECT
    category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity,
    ROUND(AVG(discount) * 100,2) AS average_discount
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;



-- View 4: Product Summary
-- Purpose: Summarises performance by product
CREATE OR REPLACE VIEW product_summary AS
SELECT
    product_name,
    category,
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    SUM(quantity) AS total_quantity
FROM superstore
GROUP BY
    product_name,
    category,
    sub_category
ORDER BY total_sales DESC;


-- View 5: Regional Summary
-- Purpose: Summarises regional business performance.
CREATE OR REPLACE VIEW regional_summary AS
SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity,
    SUM(shipping_cost) AS total_shipping_cost
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;


-- View 6: Customer Summary
-- Purpose: Summarises customer purchasing behaviour.
CREATE OR REPLACE VIEW customer_summary AS
SELECT
    customer_id,
    customer_name,
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS total_quantity
FROM superstore
GROUP BY
    customer_id,
    customer_name,
    segment
ORDER BY total_sales DESC;

