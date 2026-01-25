-- E-commerce Sales Analysis Queries

-- 1. Monthly Revenue Trend

SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY month
ORDER BY month;

-- 2. Top Customers by Revenue
-- 3. Revenue by Category
-- 4. Profit by Category
-- 5. Payment Method Distribution
-- 6. Repeat vs One-time Customers
-- 7. Return Rate Analysis
-- 8. Delivery Performance
-- 9. Profit by Region
-- 10. Shipping Cost by Region
