-- comando WHERE

-- permite criar filtros nas consultas
-- Postgres é case-sensitive.

-- selecionar a tabela customers]
-- filtro que mostra apenas os clientes com o título 'Owner'

SELECT * FROM customers
WHERE contact_title = 'Owner';

-- filtro para que sejam mostrados apenas os clientes da frança

SELECT * FROM customers
WHERE country = 'France'

-- selecionar a tabela products
-- filtro para mostrar os produtos com estoque igual a 0

SELECT * FROM products
WHERE units_in_stock = 0;

SELECT * FROM products
WHERE unit_price >= 50;
ORDER BY unit_price DESC;

