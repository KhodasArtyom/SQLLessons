SELECT company_name,contact_name,phone,country
FROM  customers
WHERE country='USA';


SELECT *
FROM products
WHERE unit_price>20;

SELECT COUNT(*)
FROM products
WHERE unit_price>20;

SELECT *
FROM products
WHERE discontinued = 1;


