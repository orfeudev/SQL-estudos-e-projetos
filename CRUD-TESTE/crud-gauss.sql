-- Operações CRUD
-- Create Read Update e Delete
-- Create: Permite criar  bancos de dados, tabelas ou views
-- Read: Permite ler os dados do banco de dados(SELECT)
-- Update: Permite atualizar os bancos de dados, tabelas ou views
-- Delete: Permite deletar dados de um banco de dados, tabelas ou views.

-- 1. Criando um novo banco de dados

CREATE DATABASE teste; -- cria um novo banco de dados
DROP DATABASE teste; -- exclui um banco de dados criado(deve estar desconectado)

-- 2. Criando um banco de dados de exemplo para testes:

CREATE DATABASE gaussufc; 

-- 3. Tipos de dados para criação de tabelas
-- uma tabela temc omo objetivo armazenar informações em diferentes colunas
-- cada uma das colunas terá um tipo diferente

CREATE TABLE tabela (coluna1 TIPO1, coluna2 TIPO2); -- exemplo

-- principais tipos de dados: INT
-- NUMERIC(M,D): M é o número total de digitos e D é a quantidade de casas decimais permitidas
-- VARCHAR(N): Uma string de comprimento variável(pode contar letras, números e caracteres especiais)
-- O parametro N especifica o comprimento maximo da coluna em caracteres
-- DATE: uma data n formato: YYYY-MM-DD.
-- TIMESTAMP: uma combinação de data e hora. Formato: YYYY-MM-DD HH:MM:SS


-- RESTRIÇÕES(CONSTRAINTS) AINDA SERÃO ADICIONADAS NO PROXIMO SCRIPT
CREATE TABLE membros(
	ID_Membro INT,
	Nome_Membro VARCHAR(100),
	Cargo VARCHAR(100)
);

CREATE TABLE diretoria(
	ID_Diretoria INT,
	Nome_da_Diretoria VARCHAR(100),
	projetos_feitos INT
);

CREATE TABLE projetos(
	ID_Projeto INT,
	ID_Tipo_de_projeto VARCHAR(100),
	ID_membro INT,
	Data_Cadastro DATE
);

SELECT * FROM membros;
SELECT * FROM diretoria;
SELECT * FROM projetos;

-- 

DROP TABLE membros;
DROP TABLE diretoria;
DROP TABLE projetos;
