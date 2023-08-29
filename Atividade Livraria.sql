-- Criando o banco dados
CREATE DATABASE Livraria1;

-- Mostrar tabelas existentes
SHOW DATABASES;

-- Usar tabela
USE Livraria1;

-- Criando tabela
CREATE TABLE Livraria1.autor( 
Id INT(30) AUTO_INCREMENT PRIMARY KEY,
Livro VARCHAR(300) NOT NULL,
Autor VARCHAR(300) NOT NULL,
Sexo_Autor VARCHAR(40) NOT NULL,
Numero_Pagina INT NOT NULL,
Editora VARCHAR(300) NOT NULL,
Valor_Capa_C DOUBLE NOT NULL,
Valor_Kindle DOUBLE NOT NULL,
Ano_Publicacao INT(4) NOT NULL
);

-- Inserindo registros na tabela
INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('Pai Rico Pai Pobre','Robert T. Kloyosaki', 'Masculino', '336', 'Alta Books', '61.53', '58.45', '2018');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('Mindset','Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('Como Fazer Amigos e Influenciar Pessoas', 'Dale Carnegie', 'Masculino', '256', 'Sextante', '38.99', '33.24', '2019');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('A Cabana','William P. Young', 'Masculino', '240', 'Aqueiro', '35.99', '17.905', '2008');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', '408', 'Objetiva', '42.99', '29.90', '2012');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('Código Limpo', 'Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('Essencialismo', 'Greg McKeown', 'Masculino', '272', 'Sextante', '53.58', '33.24', '2015');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', '176', 'Sextante', '32.86', '17.09', '2018');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('Comece Pelo Porquê', 'Simon Sinek', 'Masculino', '256', 'Sextante', '50.58', '24.90', '2018');

INSERT INTO Livraria1.autor (Livro, Autor, Sexo_Autor, Numero_Pagina, Editora, Valor_Capa_C, Valor_Kindle, Ano_Publicacao) 
VALUES ('O Alquimista', 'Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');


-- Mostrar registros da tabela
SELECT*FROM Livraria1.autor;

-- Selecionar apenas nome e livro da tabela
SELECT Id, Autor, Livro
FROM Livraria1.autor
WHERE Id<3 AND Autor LIKE '%S%'
ORDER BY Autor DESC;

-- Apagar Tabela
DROP TABLE Livraria1.autor;

-- Deletar registro da tabela
DELETE FROM Livraria1.autor WHERE Id=2;

-- Atualizar dados do registro
UPDATE Livraria1.autor SET Autor= Robert WHERE Id= 1;

-- Atividade | Editora

-- 1- Trazer todos os dados
SELECT * FROM Livraria1.autor;

-- 2- Trazer o nome do livro e nome editora
SELECT Id, Livro, Editora 
FROM Livraria1.autor;

-- 3- Trazer o nome do livro, editora e autores do sexo masculino
SELECT Id, Livro, Editora, Autor, Sexo_Autor
FROM Livraria1.autor
WHERE Sexo_Autor LIKE 'Masculino';

-- 4- Trazer o nome do livro, número de páginas do livro e autores do sexo feminino
SELECT Id, Livro, Numero_Pagina, Autor, Sexo_Autor
FROM Livraria1.autor
WHERE Sexo_Autor LIKE 'Feminino';

-- 5- Trazer o nome do autor, editora e ano de publicação
SELECT Id, Autor, Editora, Ano_Publicacao
FROM Livraria1.autor
WHERE Ano_Publicacao LIKE '2017';

-- 6- Trazer o nome dos autores do sexo masculino com livros publicados pela editora Sextante ou pela editora Alta Books
SELECT Id, Autor, Sexo_Autor, Livro, Editora
FROM Livraria1.autor
WHERE Sexo_Autor= 'Masculino' AND Editora= 'Sextante' OR Editora= 'Alta Books';

-- 7- Trazer o nome do livro, autor, número de páginas, editora, ano de publicacao e valor com a capa comum
SELECT Id, Livro Autor, Numero_Pagina, Editora, Ano_Publicacao, Valor_Capa_C
FROM Livraria1.autor;

-- 8- Trazer o nome do livro, autor, número de páginas e valor no Kindle
SELECT Id, Livro, Autor, Numero_Pagina, Valor_Kindle
FROM Livraria1.autor;

-- 9- Trazer o nome dos autores com livros publicados pela editora Sextante
SELECT Id, Autor, Livro, Editora
FROM Livraria1.autor
WHERE Editora LIKE 'Sextante';

-- 10- Trazer o nome do livro, autores, valor com capa comum e valor no Kindle
SELECT Id, Livro, Autor, Valor_Capa_C, Valor_Kindle
FROM Livraria1.autor;