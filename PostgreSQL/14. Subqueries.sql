-- SUBQUERY
-- Subqueries no SQL são queries dentro de queries. É a possibilidade de reaproveitar o resultado de uma querie(select) dentro de outra.

-- Exemplo: Quais produtos tem um preço acima da média?

SELECT AVG(unit_price) FROM products;

SELECT * FROM products
WHERE unit_price >= (SELECT AVG(unit_price) FROM products);

-- Subquery: Cláusula WHERE
-- exemplo: Quais pedidos tem uma quantidade vendida acima da quantidade vendida média?

SELECT * FROM order_details;

SELECT AVG(quantity) FROM order_details;

SELECT 
	order_id,
	SUM(quantity) total_vendido
FROM order_details
GROUP BY order_id;
WHERE quantity >= (


-- Aula 3 - Subquery: cláusula FROM
-- Exemplo: média de clientes de acordo com o cargo

SELECT * FROM customers;


select
	avg(total_clientes)
from (
	select
		contact_title,
		count(*) total_clientes
	from customers
	group by contact_title) t;


-- Subquery: cláusula SELECT

SELECT * FROM products;

SELECT
	*,
	(SELECT AVG(unit_price) FROM products) media_preco
FROM products;

