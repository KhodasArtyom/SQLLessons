SELECT ship_country,count(*)
FROM orders
WHERE  freight>50
GROUP BY ship_country
ORDER BY count(*) DESC;

SELECT category_id,sum(units_in_stock)
FROM products
GROUP BY category_id
ORDER BY SUM(units_in_stock) DESC
LIMIT 5;
