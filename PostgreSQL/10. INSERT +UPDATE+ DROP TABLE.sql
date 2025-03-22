-- INSERT INTO

-- # 5. Inserindo dados nas tabelas.

INSERT INTO Alunos(ID_Aluno, Nome_Aluno, Email)
VALUES
	(1, 'Ana' , 'Ana123@gmail.com'),
	(2, 'João', 'João123@gmail.com'),
	(3, 'Marcelo', 'orfeujr123@gmail.com'),
	(4, 'Diego', 'diegojr1329@gmail.com');
SELECT * FROM Alunos;

INSERT INTO Cursos(ID_Curso, Nome_Curso, Preco_Curso)
VALUES
	(1, 'Excel', 100),
	(2, 'VGA', 200),
	(3,'Power BI', 150);

SELECT * FROM cursos;

INSERT INTO matriculas(ID_Matricula, ID_Aluno, ID_Curso, Data_Cadastro)
VALUES
	(1, 1, 1, '2021/03/11'),
	(2, 1, 2, '2021/03/11'),
	(3, 2, 3, '2021/03/11'),
	(4, 3, 1, '2021/03/11'),
	(5, 4, 1, '2021/03/11'),
	(6, 4, 3, '2021/03/11');

SELECT * FROM matriculas;

--#6 Atualizando dados de uma tabela com o UPDATE

UPDATE cursos
SET Preco_Curso = 300
WHERE ID_Curso =1;

--#7 deletando registros de uma tabela

DELETE FROM matriculas
WHERE ID_Matricula = 6;

-- #8 DEletando todos os registros de uma tabela de uma só vez, mas a tabela continua existindo.

SELECT * FROM matriculas;

TRUNCATE TABLE matriculas;

-- #9. DROP TABLE
-- Deletando tabelas do banco de dados
-- Atenção: Cuidado ao dropar uma tabela que tenha restrições de primary key!!
-- CASCADE destrói as relações entre tabelas
DROP TABLE alunos CASCADE;
DROP TABLE cursos CASCADE;
DROP TABLE matriculas;