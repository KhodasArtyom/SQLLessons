--1--

SELECT *
FROM orders
WHERE ship_country LIKE 'U%';

--2--
SELECT order_id, customer_id, freight, ship_country
FROM orders
WHERE ship_country LIKE 'N%'
ORDER BY freight DESC
LIMIT 10;

--3--
SELECT first_name, last_name, home_phone, region
FROM employees
WHERE region ISNULL;

--4--
SELECT count(*)
FROM customers
WHERE region IS NOT NULL;

--5--
SELECT country, count(*)
FROM suppliers
GROUP BY country
ORDER BY count(*) DESC;


--6--
SELECT ship_country, sum(freight)
FROM orders
WHERE ship_region IS NOT NULL
GROUP BY ship_country
HAVING sum(freight) > 2750
ORDER BY sum(freight) DESC;

--7--
SELECT DISTINCT country
FROM customers
UNION
SELECT DISTINCT country
FROM suppliers
ORDER BY country;

--8--
SELECT DISTINCT country
FROM customers
INTERSECT
SELECT DISTINCT country
FROM suppliers
INTERSECT
SELECT country
FROM employees;

--9--
SELECT country
FROM customers
INTERSECT
SELECT country
FROM suppliers
EXCEPT
SELECT country
FROM employees;


