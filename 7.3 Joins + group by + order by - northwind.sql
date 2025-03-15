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
	

