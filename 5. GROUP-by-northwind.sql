-- Criando agrupamentos --
-- GROUP BY

-- 1. utilizando o GROUP BY para fazer a contagens de clientes por por país

SELECT
	country,
	COUNT(*)
FROM customers
GROUP BY country
ORDER BY COUNT(*) DESC;

-- 2. quantidade total de clientes por título

SELECT 
	contact_title,
	COUNT(*)
FROM customers
GROUP BY contact_title
ORDER BY COUNT(*) DESC;

-- 3. soma total de estoque por supplier_id

SELECT * FROM products

SELECT
	supplier_id,
	SUM(units_in_stock)
FROM products
GROUP BY supplier_id;

-- 4. media de unit_price por supplier_id

SELECT
	supplier_id,
	AVG(unit_price)
FROM products
GROUP BY supplier_id;
	