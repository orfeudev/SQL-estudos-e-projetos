-- LEFT JOIN x INNER JOIN x RIGHT JOIN x FULL JOIN

-- Considere que temos uma tabela de vendas onde foram vendidos os produtos de id 1, 3 e 4.
-- Considere que temos uma tabela de produtos com produtos de ide 1, 2 e 3.

SELECT 
	*
FROM vendas
XXXX JOIN produtos
ON vendas.id_produto = produtos.id_produto

-- LEFT JOIN -> Trará as linhas da tabela de vendas(tabela da esquerda)> vendas do produto de id 1,3 e 4.
-- INNER JOIN -> Retornará apenas a intersecção entre a tabela de VENDAS e a de PRODUTOS: 1 e 3
-- RIGHT JOIN -> Trará as linhas da tabela de produtos(tabela da direita)> vendas dos produtos id 1, 2 e 3.
-- FULL JOIN -> Conjunto união das duas tabelas