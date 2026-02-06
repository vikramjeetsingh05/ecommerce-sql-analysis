# E-commerce SQL Analysis

## Overview
This project analyzes e-commerce transaction data using SQL Server to answer key business questions related to revenue, customers, and operations.

## Dataset
- Source: Simulated e-commerce sales dataset
- Records: ~34,500 transactions
- Format: CSV imported into SQL Server

## Tools Used
- SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

## Database Schema
See `schema.sql` for table structure.

## Business Questions
1. How does revenue change over time?
2. Who are the top customers by revenue?
3. Which product categories generate the most revenue?
4. How does profit vary by category and region?

## Analysis
All SQL queries are available in `queries.sql`.

## Key Insights

### 1. Monthly Revenue Trend

Revenue started at a relatively low level in September 2023 (₹151,136) and increased sharply in October 2023 (₹262,503), indicating strong early growth. From November 2023 to August 2025, revenue remained largely stable within the range of ₹210,000 to ₹265,000, suggesting consistent business performance over this period.

The highest revenue was recorded in December 2024 (₹278,154), indicating strong year-end sales. In contrast, September 2025 showed a significant decline (₹91,848), which may be due to incomplete data or reduced customer activity.

### 2. Top Customers by Revenue

The highest-revenue customer (C16655) generated ₹13,885, followed by C13565 and C15379 with revenues above ₹11,000.

After the top three customers, revenue declines gradually from approximately ₹7,400 to ₹6,400 across ranks 4 to 10, indicating a smooth and balanced distribution.

The combined revenue of the top 10 customers is approximately ₹86,630, which represents only about 1.5% of total revenue (₹5.86M). This suggests that the business is not dependent on a small group of high-value customers.

Overall, revenue is well distributed across a large customer base, indicating low customer concentration risk and stable demand.


### 3. Revenue by Category

Electronics is the highest revenue-generating category with ₹3.32M, contributing approximately 56.6% of total revenue. Home and Sports follow with ₹1.08M and ₹0.63M respectively, while Grocery generates the lowest revenue at ₹82K.

This indicates strong dependence on Electronics, while Home and Sports present opportunities for revenue diversification and growth.

### 4. Profit by Category

Electronics dominates profitability with ₹5.07M, accounting for approximately 67% of total profit. Home and Sports contribute ₹1.47M and ₹0.62M respectively, while Fashion provides moderate profit.

Grocery is the only loss-making category (-₹800), indicating low margins or high operational costs that require optimization.

### 5. Payment Method Distribution

Card-based payments dominate transactions, accounting for approximately 60% of total usage, with credit cards contributing 35.3% and debit cards 24.7%.

COD and UPI show similar adoption at around 12%, while wallet payments are the least used at 6%. This indicates strong reliance on card infrastructure and moderate adoption of digital payment method.

### 6. Repeat vs One-time Customers

Out of 7,903 unique customers, 7,428 (approximately 94%) are repeat customers, while only 475 (6%) are one-time buyers.

This reflects strong customer retention and satisfaction, contributing to stable revenue. However, limited new customer acquisition may restrict long-term growth.

### 7. Return Rate Analysis

Return rates remain below 10% across all categories, indicating strong overall product quality and customer satisfaction.

Fashion shows the highest return rate at 8.28%, followed by Electronics (7.30%) and Home (5.65%), which may be due to size, fit, or expectation mismatch in online purchases.

Grocery has the lowest return rate at 1.31%, reflecting high reliability and low dissatisfaction in essential goods.

Overall, returns are well controlled, with no category showing excessive return behavior.

### 8. Delivery Performance

North region demonstrates the strongest overall delivery performance, with consistently low average delivery times across most categories. Central region follows closely, performing well in several categories but showing moderate variability.

West region exhibits average delivery performance, while East region records the slowest delivery times, with higher average and maximum delivery durations.

This suggests potential logistical inefficiencies in the East region that may require operational improvements.

### 9. Profit by Region

West region generates the highest total profit at approximately ₹1.80M and also shows the strongest average profit margin, indicating high operational efficiency.

North and South follow with ₹1.58M and ₹1.50M respectively, while East and Central contribute comparatively lower profits.

Although Central region has the lowest total profit, it shows relatively strong average margins, suggesting potential for revenue growth through volume expansion.

### 10. Shipping Cost by Region

Central region incurs the lowest total shipping cost at ₹34.47K, indicating efficient logistics management. South region has the highest shipping cost at ₹46.73K, followed closely by North and East.

All regions show similar average shipping costs of approximately ₹6 per order, suggesting consistent pricing and cost structure across locations.

Overall, shipping expenses remain stable across regions, with no major cost imbalance.



## Future Improvements
- Add interactive dashboards using Power BI
- Perform customer segmentation and lifetime value analysis
- Analyze promotional and seasonal effects in more detail

