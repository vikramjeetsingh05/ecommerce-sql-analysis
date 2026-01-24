CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20),
    product_id VARCHAR(20),
    category VARCHAR(50),
    price DECIMAL(10,2),
    discount DECIMAL(5,2),
    quantity INT,
    payment_method VARCHAR(30),
    order_date DATE,
    delivery_time_days INT,
    region VARCHAR(30),
    returned VARCHAR(5),
    total_amount DECIMAL(10,2),
    shipping_cost DECIMAL(10,2),
    profit_margin DECIMAL(6,2),
    customer_age INT,
    customer_gender VARCHAR(10)
);
