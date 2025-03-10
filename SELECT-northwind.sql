-- POSTGRESQL 
-- SELECT
-- consultas básicas em PostgreSQL


SELECT * FROM categories; -- selecionando todas as colunas de categorias

SELECT * FROM customers; -- selecionando todas as colunas de costumers

SELECT * FROM employees; -- selecionando todas as colunas de employees

SELECT first_name FROM employees; -- selecionando apenas a coluna first_name

SELECT product_name FROM products; -- selecionando apenas a coluna product_name

SELECT product_id, product_name, unit_price FROM products -- selecionando três colunas ao mesmo tempo


-- selecionando três colunas ao mesmo tempo mas utilizando identação de código
SELECT
	product_id,
	product_name,
	unit_price
FROM products;

-- ALIAS: Renomeando colunas e tabelas com o AS
-- sempre aspas duplas

SELECT
	product_id AS "ID_produto",
	product_name AS "nome_do_produto",
	unit_price AS "preço_unitario"
FROM products

-- LIMIT: limitando a quantidade de linhas da query
-- selecionando apenas a as 100 primeiras linhas da tabela ordes

SELECT * FROM orders
LIMIT 100;

-- pegando uma coluna com 10 linhas
SELECT product_id FROM products
LIMIT 10

-- DISTINCT: Selecionar os valores distintos de uma coluna
-- retorna os valores sem repetir
SELECT DISTINCT contact_title FROM customers;

