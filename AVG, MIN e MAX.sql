-- AVG, MIN e MAX
-- media, minimo e maximo de unit_price da tabela products

SELECT * FROM products

SELECT
	AVG(unit_price) AS "PreçoMedio",
	MIN(unit_price) AS "menor_preço",
	MAX(unit_price) AS "maior_preço"
FROM products;

