-- Funções de texto
-- Upper, Lower, Lenght, Initcap
-- são usadas para padronizar o banco de dados

SELECT * FROM employees;

SELECT
	first_name,
	upper(first_name), -- deixa tudo maiusculo
	lower(first_name), -- deixa tudo minúsculo
	LENGTH(first_name), -- dá o tamanho da string
	initcap(first_name) -- deixa a primeira letra maiúscula
FROM employees;

-- REPLACE

SELECT * FROM customers;

select
	contact_name,
	contact_title,
	replace(contact_title,'Owner','CEO') -- substitui um texto pelo outro
FROM customers;

-- left e right

SELECT
	'ABC-9999',
	left('ABC-9999', 3),
	right('ABC-9999',4);

-- substring e strpos
SELECT
	'ABC-9999',
	substring('ABC-9999',1,3),
	substring('ABC-9999',5,4),
	strpos('ABC-9999','-');
--
SELECT
	'ABC-9999',
	substring('ABC-9999', 1, strpos('ABC-9999', '-') -1),
	substring('ABC-9999', strpos('ABC-9999', '-') +1, 100),
	strpos('ABC-9999', '-');