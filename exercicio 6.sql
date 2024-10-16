USE AnaKatsumata
GO

/*--------------------------------------------------------------
  Curso Técnico em Desenvolvimento de Sistemas
  Banco de Dados - Prof. Gustavo Castello
  Script: 08A DB - Script Banco de Dados para Aula
 -------------------------------------------------------------*/

/*--------------------------------------------------------------
  Criando o banco de dados.
 -------------------------------------------------------------*/
--Use master
--Go
--Drop Database If Exists dbCursos
--Go
--Create Database dbCursos;
--Go

/*--------------------------------------------------------------
						Criando as tabelas 
 -------------------------------------------------------------*/
 CREATE TABLE Ex06_Cursos(
 CursoId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 Sigla VARCHAR(2) NOT NULL,
 Curso VARCHAR(80) NOT NULL,
 CargaHoraria INT NOT NULL
 )
 GO

 CREATE TABLE Ex06_Aluno(
 AlunoId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
 Aluno VARCHAR(80) NOT NULL,
 RM VARCHAR(10) NOT NULL,
 DataNascimento DATE NOT NULL,
 )
GO

CREATE TABLE Ex06_Matricula (
    DataMatricula DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE Ex06_TipoAluno (
    TipoId INT PRIMARY KEY IDENTITY(1,1),
    Tipo VARCHAR(50) NOT NULL
);
GO

ALTER TABLE Ex06_Aluno
ADD TipoId INT NOT NULL, 
CONSTRAINT Fk_AlunoCursos
FOREIGN KEY (TipoId) REFERENCES Ex06_TipoAluno (TipoId)
GO


ALTER TABLE Ex06_Matricula
ADD AlunoId INT NOT NULL, 
CONSTRAINT Fk_MatriculaAluno
FOREIGN KEY (AlunoId) REFERENCES Ex06_Aluno (AlunoId)
GO

ALTER TABLE Ex06_Matricula
ADD CursoId INT NOT NULL, 
CONSTRAINT Fk_MatriculaCurso
FOREIGN KEY (CursoId) REFERENCES Ex06_Cursos (CursoId)
GO

SELECT * FROM Ex06_Matricula

INSERT INTO Ex06_Cursos (Curso, Sigla, CargaHoraria)
VALUES
('Desenvolvimento de Sistemas', 'DS', 3600),
('Técnico em Mecânica', 'TM', 1200),
('Técnico em Eletrotécnica', 'TE', 1400),
('Técnico em Automação Industrial', 'TA', 1300),
('Técnico em Informática', 'TI', 1100),
('Técnico em Segurança do Trabalho', 'TS', 1000),
('Técnico em Logística', 'TL', 900),
('Técnico em Química', 'TQ', 1300),
('Técnico em Redes de Computadores', 'TR', 1200),
('Técnico em Edificações', 'TD', 1100)
GO

SELECT * FROM Ex06_Cursos
GO

INSERT INTO Ex06_TipoAluno (Tipo)
VALUES 
('CT'),
('FIC')
GO



 INSERT INTO Ex06_Aluno (Aluno, RM, DataNascimento, TipoId) 
 VALUES
('João Silva', 'RM001', '2000-05-15', 1),
('Maria Oliveira', 'RM002', '1999-08-22', 2),
('Carlos Souza', 'RM003', '2001-11-30', 1),
('Ana Costa', 'RM004', '2000-02-10', 1),
('Lucas Pereira', 'RM005', '1998-07-19', 2),
('Fernanda Lima', 'RM006', '2001-03-25', 2),
('Rafael Santos', 'RM007', '1999-12-05', 1),
('Beatriz Almeida', 'RM008', '2000-09-14', 1),
('Gabriel Rocha', 'RM009', '2001-06-21', 1),
('Larissa Martins', 'RM010', '1998-04-11', 2)
GO

INSERT INTO Ex06_Matricula ( AlunoId, CursoId)
VALUES 
(2,11),
(3,12),
 (4,13),
( 5,14),
( 6,15),
( 7,16),
( 8,17),
( 9,18),
(10,19)
GO

INSERT INTO Ex06_Matricula (DataMatricula, AlunoId, CursoId)
VALUES ('2023-10-01', 11,20)
GO

 /*--------------------------------------------------------------
  Selecionando todos os alunos, sem especificar a ordem de 
  exibição (vai seguir automaticamente a ordem da PK Id Aluno)
 -------------------------------------------------------------*/


 /*--------------------------------------------------------------
  Selecionando todos os alunos por ordem alfabética de Nome 
  (Cláusula Order By)(Obs, a palavra ASC é opcional por ser 
  o padrão)
 -------------------------------------------------------------*/


  /*--------------------------------------------------------------
  Selecionando todos os alunos por ordem alfabética inversda de 
  Nome (Cláusula Order By com Desc)
 -------------------------------------------------------------*/


  /*--------------------------------------------------------------
  Selecionando todos os alunos e seus respectivos tipos
 -------------------------------------------------------------*/


   /*--------------------------------------------------------------
  Selecionando todos os alunos e seus respectivos tipos e ordenando
  os resultados por Tipo
 -------------------------------------------------------------*/


  /*--------------------------------------------------------------
  Selecionando todos os alunos e seus respectivos tipos e combinando
  ordenações. Primeiro por Tipo em ordem alfabética inversa, depois
  por nome.
 -------------------------------------------------------------*/


  /*--------------------------------------------------------------
  Selecionando separadamente o dia, o mês e o ano da data de 
  nascimento de todos os alunos 
 -------------------------------------------------------------*/


  /*--------------------------------------------------------------
  Selecionando todos os alunos que fazem aniversário em março
 -------------------------------------------------------------*/


  /*--------------------------------------------------------------
  Selecionando todos os alunos com idade maior ou igual 14 anos
  sutratindo ano atual - ano de nascimento.
 -------------------------------------------------------------*/
 


  /*--------------------------------------------------------------
  Selecionando todos os alunos com idade maior ou igual 14 anos
  usando DateDiff (calcula a diferença entre duas datas)
 -------------------------------------------------------------*/