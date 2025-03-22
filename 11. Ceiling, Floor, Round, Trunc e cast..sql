-- Funções de Número, Texto e Data

-- Funções de número
-- Ceiling, Floor, Round, Trunc

-- CEILING: Retorna o menor número inteiro maior ou igual ao número especificado.
-- FLOOR: Retorna o maior número inteiro menor ou igual ao número especificado.
-- ROUND: Arredonda um número para o número especificado de casas decimais.
-- TRUNC: Trunca um número para o número especificado de casas decimais, removendo as casas decimais restantes.
-- CAST: Converte um valor de um tipo de dados para outro tipo de dados especificado.

select 
	AVG(unit_price),
	ceiling(avg(unit_price)),
	floor(avg(unit_price)),
	round(cast(avg(unit_price) as numeric), 2),
	trunc(cast(avg(unit_price) as numeric), 3)
from products;


