--1--

SELECT *
FROM orders
WHERE ship_country LIKE 'U%';

--2--
SELECT order_id,customer_id,freight,ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10;