-- E-commerce Sales Analysis Queries

-- 1. Monthly Revenue Trend

SELECT
    FORMAT(order_date, 'yyyy-MM') AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY month;


-- 2. Top Customers by Revenue

WITH ranked_customers AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_revenue,
        RANK() OVER (ORDER BY SUM(total_amount) DESC) AS revenue_rank
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM ranked_customers
WHERE revenue_rank <= 10
ORDER BY revenue_rank;


-- 3. Revenue by Category

SELECT
    category,
    SUM(total_amount) AS total_revenue
FROM orders
GROUP BY category


-- 4. Profit by Category

    SELECT
    category,
    SUM(total_amount * profit_margin / 100.0) AS total_profit
FROM orders
GROUP BY category
ORDER BY total_profit DESC;


    
-- 5. Payment Method Distribution

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS transaction_percentage
FROM orders
GROUP BY payment_method
ORDER BY total_transactions DESC;




-- 6. Repeat vs One-time Customers

WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(*) AS order_count
    FROM orders
    GROUP BY customer_id
)

SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time'
        ELSE 'Repeat'
    END AS customer_type,
    COUNT(*) AS customer_count
FROM customer_orders
GROUP BY
    CASE
        WHEN order_count = 1 THEN 'One-time'
        ELSE 'Repeat'
    END;



-- 7. Return Rate Analysis

SELECT
    category,
    COUNT(CASE WHEN returned = 'Yes' THEN 1 END) AS returned_orders,
    COUNT(*) AS total_orders,
    ROUND(
        COUNT(CASE WHEN returned = 'Yes' THEN 1 END) * 100.0 / COUNT(*),
        2
    ) AS return_percentage
FROM orders
GROUP BY category
ORDER BY return_percentage DESC;


-- 8. Delivery Performance

SELECT
    region,
    category,
    ROUND(AVG(delivery_time_days), 2) AS avg_delivery_time,
    MAX(delivery_time_days) AS max_delivery_time,
    MIN(delivery_time_days) AS min_delivery_time
FROM orders
GROUP BY region, category
ORDER BY avg_delivery_time ASC;

-- 9. Profit by Region

SELECT
    region,
    SUM(total_amount * profit_margin / 100.0) AS total_profit,
    ROUND(
        SUM(total_amount * profit_margin / 100.0) / SUM(total_amount) * 100,
        2
    ) AS avg_profit_margin
FROM orders
GROUP BY region
ORDER BY total_profit DESC;


-- 10. Shipping Cost by Region

SELECT
    region,
    SUM(shipping_cost) AS total_shipping_cost,
    ROUND(AVG(shipping_cost), 2) AS avg_shipping_cost
FROM orders
GROUP BY region
ORDER BY total_shipping_cost DESC;

