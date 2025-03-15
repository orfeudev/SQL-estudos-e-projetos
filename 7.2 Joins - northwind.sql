-- JOINs no banco de dados northwind

-- Join entre as tabelas 'products' e 'order_details'. Retornando todas as colunas dessas duas tabelas

SELECT 
	*
FROM order_details
LEFT JOIN products
ON order_details.product_id = products.product_id;

-- relacionando as tabelas 'products' e 'categories' 

SELECT * FROM products;
SELECT * FROM categories;

SELECT
	*
FROM products
INNER JOIN categories
ON products.category_id = categories.category_id;

-- retornando apenas as colunas product_id, product_name, category_id,
-- unit_price(tabela products) e category_name(categories)

SELECT
	products.product_id,
	products.product_name,
	products.category_id,
	products.unit_price,
	categories.category_name
FROM products
INNER JOIN categories
ON products.category_id = categories.category_id;

-- consulta que retorna order_id, customer_id, order_date(tabela orders)
-- e contact_name(customers) 

 SELECT * FROM customers;
 SELECT * FROM orders;

 SELECT
 	orders.order_id,
	orders.customer_id,
	orders.order_date,
	customers.contact_name
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id;
	 
SELECT DISTINCT customer_id FROM orders; -- 89 ids distintos
SELECT DISTINCT customer_id FROM customers; -- 91 ids distintos
 
-- a escolha foi RIGHT JOIN pois existem clientes que só existem na base de dados da tabela customers 	
