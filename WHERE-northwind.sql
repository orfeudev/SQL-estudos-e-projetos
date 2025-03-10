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

-- SELECIONAR TABELA products
-- preços dos produtos > = 50
-- ordenar de forma decrescente

SELECT * FROM products
WHERE unit_price >= 50
ORDER BY unit_price DESC;

-- tabela orders
-- cria um filtro que mostra os pedidos feitos depois do dia 01/01/1998

SELECT * FROM orders
WHERE order_date >= '1998-01-31';


-- WHERE em conjunto com AND e OR
-- cria filtros com mais de uma coluna

-- Filtros com mais de uma coluna
-- AND: O filtro será realizado se todas as condições forem verdadeiras
-- OR: O filtro será realizado desde que pelo menos 1 condição seja verdadeira

-- selecionando a tabela customers
-- criando filtro para que sejam mostrados apenas clientes com contact_title = owner E do pais frança

SELECT * FROM customers
WHERE contact_title = 'Owner' AND country = 'France';

-- filtro para mostrar clientes que sejam do méxico ou frança

SELECT * FROM customers
WHERE country = 'France' OR  country = 'Mexico';

-- WHERE com LIKE
-- permite criar filtros especiais de textos
-- medidos em boxes

SELECT * FROM products
WHERE quantity_per_unit LIKE '%boxes%';

--produtos medidos em ML

SELECT * FROM products
WHERE quantity_per_unit LIKE '%ml%';

-- WHERE com IN
-- clientes do mexico, frança e uk
-- alternativa À multiplos ors

SELECT * FROM customers
WHERE country IN ('Mexico', 'UK','France');

--  WHERE com BETWEEN
-- Esta combinação é uma alternativa excelente oao uso de AND 
-- para filtrar intervalos de números e datas

--utilizando primeiro o método AND
SELECT * FROM products
WHERE unit_price >= 50 AND unit_price <= 100

-- Agora utilizando o métodoo BETWEEN

SELECT * FROM products
WHERE unit_price BETWEEN 50 AND 100;

-- selecionando a tabela orders
SELECT * FROM orders
WHERE order_date BETWEEN '01-01-1997' AND '31-12-1997'

