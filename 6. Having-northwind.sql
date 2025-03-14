-- GROUP BY + WHERE vs GROUP BY + HAVING

-- 1. Quantidade total de clientes com  o cargo owner por país(country). 
-- Filtra primeiro: só considera os registros onde contact_title = 'Owner'.
-- agrupa por país.
-- Mostra o número de clientes com o título Owner em cada país.

SELECT * FROM customers; -- analisando a tabela

SELECT 
	country,
	COUNT(1)
FROM customers
WHERE contact_title = 'Owner'
GROUP BY country;




-- agrupamento que mostra os países com mais de 10 clientes.
-- Agrupa primeiro: todos os registros, sem filtrar pelo título.
-- Conta quantos clientes existem em cada país (independentemente do cargo).
-- Depois, com o HAVING, mantém só os países com 10 ou mais clientes.

SELECT
	country,
	COUNT(1)
FROM customers
GROUP BY country
HAVING COUNT(1) >= 10

