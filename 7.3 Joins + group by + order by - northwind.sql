-- Utilizando GROUP BY e ORDER BY no JOIN

-- exemplo 1: utilizando JOIN, GROUP BY, ORDER BY parar criar um agrupamento que terona como
-- resultado a quantidade_total (SUM(quantity)) para cada product_name.
-- ordene o resultado do maior para o menor, considerando a quantidade_total.

SELECT * FROM products;

SELECT * FROM order_details;

SELECT
	product_name,
	SUM(quantity) AS quantidade_total
FROM order_details
LEFT JOIN products
ON order_details.product_id = products.product_id
GROUP BY product_name
ORDER BY quantidade_total DESC;

-- exemplo 2: Ainda utilizando o código da análise anterior, faça o agrupamento de quantidade_total
-- por product_name considerando apenas os produtos da classe luxo(preço acima de R$ 80)

SELECT
	product_name,
	SUM(quantity) AS quantidade_total
FROM order_details
LEFT JOIN products 
ON order_details.product_id = products.product_id
WHERE products.unit_price >= 80
GROUP BY product_name
ORDER BY quantidade_total DESC;

-- consider agora a quantidade_total >= 1000

SELECT
	product_name,
	SUM(quantity) AS quantidade_total
FROM order_details
LEFT JOIN products 
ON order_details.product_id = products.product_id
GROUP BY product_name
HAVING SUM(quantity) >= 1000
ORDER BY quantidade_total DESC;
