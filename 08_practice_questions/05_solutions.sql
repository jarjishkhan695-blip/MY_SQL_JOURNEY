-- SQL Practice Solutions

USE sql_practice;

-- Beginner Solutions

-- Q1. Show all customers.
SELECT * FROM customers;

-- Q2. Show only customer names and cities.
SELECT customer_name, city FROM customers;

-- Q3. Show all products with price greater than 100.
SELECT * FROM products
WHERE price > 100;

-- Q4. Show all customers from Mumbai.
SELECT * FROM customers
WHERE city = 'Mumbai';

-- Q5. Sort products by price from highest to lowest.
SELECT * FROM products
ORDER BY price DESC;

-- Q6. Show unique product categories.
SELECT DISTINCT category FROM products;

-- Q7. Count total customers.
SELECT COUNT(*) AS total_customers FROM customers;

-- Q8. Find the cheapest product.
SELECT * FROM products
ORDER BY price ASC
LIMIT 1;

-- Intermediate Solutions

-- Q1. Show each order with customer name, product name, quantity, and price.
SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    o.quantity,
    p.price
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id;

-- Q2. Calculate total order value for each order.
SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    o.quantity,
    p.price,
    o.quantity * p.price AS total_value
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id;

-- Q3. Find total amount spent by each customer.
SELECT
    c.customer_name,
    SUM(o.quantity * p.price) AS total_spent
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY c.customer_name;

-- Q4. Find total quantity sold by each product.
SELECT
    p.product_name,
    SUM(o.quantity) AS total_quantity_sold
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY p.product_name;

-- Q5. Find customers who bought Electronics products.
SELECT DISTINCT c.customer_name
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE p.category = 'Electronics';

-- Q6. Find product categories with total sales greater than 1000.
SELECT
    p.category,
    SUM(o.quantity * p.price) AS total_sales
FROM orders AS o
INNER JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY p.category
HAVING SUM(o.quantity * p.price) > 1000;

-- Q7. Find customers who have placed more than one order.
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;

-- Advanced Solutions

-- Q1. Rank customers by total spending.
WITH customer_spending AS (
    SELECT
        c.customer_name,
        SUM(o.quantity * p.price) AS total_spent
    FROM orders AS o
    INNER JOIN customers AS c
        ON o.customer_id = c.customer_id
    INNER JOIN products AS p
        ON o.product_id = p.product_id
    GROUP BY c.customer_name
)
SELECT
    customer_name,
    total_spent,
    RANK() OVER (ORDER BY total_spent DESC) AS spending_rank
FROM customer_spending;

-- Q2. Rank products by total revenue within each category.
WITH product_revenue AS (
    SELECT
        p.category,
        p.product_name,
        SUM(o.quantity * p.price) AS revenue
    FROM orders AS o
    INNER JOIN products AS p
        ON o.product_id = p.product_id
    GROUP BY p.category, p.product_name
)
SELECT
    category,
    product_name,
    revenue,
    RANK() OVER (PARTITION BY category ORDER BY revenue DESC) AS category_rank
FROM product_revenue;

-- Q3. Find customers who spent more than the average customer spending.
WITH customer_spending AS (
    SELECT
        c.customer_name,
        SUM(o.quantity * p.price) AS total_spent
    FROM orders AS o
    INNER JOIN customers AS c
        ON o.customer_id = c.customer_id
    INNER JOIN products AS p
        ON o.product_id = p.product_id
    GROUP BY c.customer_name
)
SELECT *
FROM customer_spending
WHERE total_spent > (
    SELECT AVG(total_spent)
    FROM customer_spending
);

-- Q4. Create a CTE that calculates revenue by product.
WITH revenue_by_product AS (
    SELECT
        p.product_name,
        SUM(o.quantity * p.price) AS revenue
    FROM orders AS o
    INNER JOIN products AS p
        ON o.product_id = p.product_id
    GROUP BY p.product_name
)
SELECT * FROM revenue_by_product;

-- Q5. Create a view showing customer order summary.
CREATE OR REPLACE VIEW customer_order_summary AS
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity * p.price) AS total_spent
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
GROUP BY c.customer_name;

SELECT * FROM customer_order_summary;

-- Q6. Find the most expensive product ordered by each customer.
SELECT
    c.customer_name,
    p.product_name,
    p.price
FROM orders AS o
INNER JOIN customers AS c
    ON o.customer_id = c.customer_id
INNER JOIN products AS p
    ON o.product_id = p.product_id
WHERE p.price = (
    SELECT MAX(p2.price)
    FROM orders AS o2
    INNER JOIN products AS p2
        ON o2.product_id = p2.product_id
    WHERE o2.customer_id = o.customer_id
);
