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
-- 4. Profit by Category
-- 5. Payment Method Distribution
-- 6. Repeat vs One-time Customers
-- 7. Return Rate Analysis
-- 8. Delivery Performance
-- 9. Profit by Region
-- 10. Shipping Cost by Region
