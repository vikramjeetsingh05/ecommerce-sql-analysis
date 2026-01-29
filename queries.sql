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
-- 8. Delivery Performance
-- 9. Profit by Region
-- 10. Shipping Cost by Region
