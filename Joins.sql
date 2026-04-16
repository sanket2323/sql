USE MyDatabase;

# Type 1 no join
SELECT *
FROM customers;

SELECT *
FROM orders;

#Type 2 inner join : only display matching
SELECT
    customers.id,
    customers.first_name,
    customers.country,
    orders.order_date,
    orders.sales
FROM customers
INNER JOIN orders
ON customers.ID = orders.customer_id;

#same code with using alias as u cant everytime write long name
#note : don't think of order in inner join customers can be replaced with order n vice versa
SELECT
    c.id,
    c.first_name,
    c.country,
    o.order_date,
    o.sales
FROM customers as c
INNER JOIN orders as o
ON c.ID = o.customer_id;

#Type3: left join
SELECT *
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;

#type 4: Right join
SELECT *
FROM customers
RIGHT JOIN orders
ON customer_id = id;

#Type 4: Full join
SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id

