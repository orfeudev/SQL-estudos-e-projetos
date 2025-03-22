-- VIEWS
-- Views são formas de armazenar o resultado de uma query em uma espécie de tabela dentro dos bancos de dados
-- É uma forma muito prática de consultar e reaproveitar resultados de consultas
-- A View mostra sempre resultados atualizados da tabela
-- SINTAXE
-- CREATE, REPLACE ALTER E DROP

-- exemplo 1: consultando a tabela products e retornando products_id, product_ame e unit_price

SELECT
	product_id,
	product_name,
	unit_price
FROM products;

-- Criando uma view a partir da consulta anterior:

CREATE OR REPLACE VIEW nwprodutos AS
SELECT
	product_id,
	product_name,
	unit_price
FROM products;

SELECT * FROM nwprodutos;

-- alterando a view criada

CREATE OR REPLACE VIEW nwprodutos AS
SELECT
	product_id,
	product_name,
	unit_price,
	units_in_stock
FROM products;

SELECT * FROM nwprodutos;

-- ALTER
ALTER VIEW nwprodutos RENAME TO nw_prod;

SELECT * FROM nw_prod;

-- DROP - DELETE
DROP VIEW IF EXISTS nw_prod;