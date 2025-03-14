-- JOINS
-- Joins relacionam diferentes tabelas dos nossos bancos de dados
-- é possível cruzar informações de diferentes tabelas
-- Para criar Joins, o primeiro passo é descobrir qual coluna as tabelas que queremos relacionar tem em comum.
-- Será através dessas colunas que o SQL saberá a forma como ele deve cruzar os dados.
-- Exemplo disso no banco de dados northwind são as tabelas 'products' e 'order_details'
-- A sintaxe mais simples para relacionar 2 tabelas(que tenham a coluna 1 em comum) é a seguinte:
-- Chave primária e Chave estrangeira

SELECT
	*
FROM
	Tabela_A
LEFT JOIN Tabela_B
ON TAbela_a.Coluna1 * TAbela_B.Coluna1;

-- com a opção acima, trazemos para uma mesma tabela TODAS as colunas das duas tabelas relacionadas, isso porque usamos o *.
-- selecionando colunas específicas

SELECT
	Tabela_A.Coluna1,
	Tabela_A.Coluna2,
	Tabela_A.Coluna3,
	Tabela_B.Coluna4,
FROM
	Tabela_A
LEFT JOIN Tabela_B
ON Tabela_A.Coluna1 = Tabela_B.Coluna1

-- opção 2

SELECT
	tA.Coluna1,
	tA.Coluna2,
	tA.coluna3,
	tB.Coluna4
FROM
	Tabela_A tA
LEFT JOIN Tabela_B tB
ON ta.Coluna1 = tb.Coluna1