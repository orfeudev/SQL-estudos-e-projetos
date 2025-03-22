-- 3. Restrições(CONSTRAINTS) para criação de tabelas

-- restrições são regras aplicadas nas colunas de uma tabela
-- ex1: podemos especificar que uma coluna nao pode ter valores NULL;
-- ex2: podemos especificar que uma coluna deverá ser uma chave priária ou chave estrangeira;
-- são usadas para limitar os tipos de dados que sao inseridos

-- #principais:
-- # NOT NULL:
-- a constraint not null faz com que uma coluna nao ceite valores null.
-- a constraint not null obriga um campo a sempre possuir um valor
			-- Nome_Cliente VARCHAR(100) NOT NULL
-- # II. PRIMARY KEY(chave primária)
-- # A PRIMARY KEY identifica de forma única cada registro em uma tabela do banco de dados
-- Chaves primarias devem conter valores únicos
-- Uma coluna de chave primária não pode conter valores NULL.
-- Cada tabela deve conter 1 e apenas 1 chave primária.

-- #III. FOREIGN KEY (chave estrangeira)
-- uma FOREIGN KEY em uma tabela é um campo que aponta para uma chave primária em outra tabela.

-- #CREATE TABLE
-- # criando tabelas no banco de dados

CREATE TABLE alunos(
	ID_Aluno INT,
	Nome_Aluno VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	PRIMARY KEY(ID_Aluno)
);

CREATE TABLE cursos(
	ID_Curso INT,
	Nome_Curso VARCHAR(100) NOT NULL,
	PRIMARY KEY(ID_CURSO)
);

CREATE TABLE matriculas(
	ID_Matricula INT,
	ID_Aluno INT NOT NULL,
	ID_Curso INT NOT NULL,
	Data_Cadastro DATE NOT NULL,
	PRIMARY KEY(ID_Matricula),
	FOREIGN KEY(ID_Aluno) REFERENCES alunos(ID_Aluno),
	FOREIGN KEY(ID_Curso) REFERENCES cursos(ID_Curso)
);
