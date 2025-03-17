-- revisando conceitos

SELECT * FROM order_details -- O select serve para iniciar uma consulta
WHERE quantity >= 10 -- o WHERE é um filtro
ORDER BY quantity DESC; -- ORDER BY é um ordenador da tabela que aceita condições

SELECT COUNT(DISTINCT quantity) FROM order_details; -- conta o numero de linhas de valores distintos em uma coluna

SELECT
	SUM(quantity) as "quantidade"
FROM order_details;

--

SELECT 
	contact_title,
	COUNT(1)
FROM customers -- seleciona a coluna contact_title de customers e faz uma contagem de pessoas por titulos
GROUP BY contact_title -- agrupa por titulo
ORDER BY COUNT(1) DESC; -- ordena a contagem de forma decrescente.

SELECT * from suppliers;

SELECT
	country,
	COUNT(1)
from suppliers
GROUP BY country
ORDER BY COUNT(1) DESC;

SELECT
	company_name,
	country
FROM suppliers;
