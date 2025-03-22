-- Funções de agregação 
-- COUNT, SUM

-- COUNT: é usado quando se quer uma contagem de linhas.

-- as linhas são contadas apenas quando os valores são válidos:

SELECT COUNT(contact_name) FROM customers;

-- quando os valores são nulos a linha nula não é contada:

SELECT COUNT(region) FROM customers;

-- contando todas as linhas da tabela

SELECT COUNT(*) FROM customers;

-- Descobrindo a quantidade de produtos no database northwind

SELECT COUNT(*) FROM products

-- SUM: soma os valores de uma determinada coluna


-- soma do total de produtos em estoque

SELECT 
	SUM(units_in_stock) AS "TotalEstoque"
FROM products


-- tabela com os detalhes das vendas

SELECT * FROM order_details

-- quantidade de vendas de produtos
SELECT
	SUM(quantity) AS "TotalDeVendas"
FROM order_details


