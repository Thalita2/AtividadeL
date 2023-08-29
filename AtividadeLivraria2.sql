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

-- 1- Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;
SELECT Id, Livro, Autor, Valor_Kindle
FROM Livraria1.autor
WHERE Valor_Kindle < 40.00;

-- 2- Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
SELECT Id, Livro, Autor, Ano_Publicacao, Editora, Sexo_Autor
FROM Livraria1.autor
WHERE Sexo_Autor= 'Feminino' AND Ano_Publicacao < 2017 AND Editora= 'Sextante';

-- 3- Trazer o nome do livro e editora de livros com mais de 200 páginas;
SELECT Id, Livro, Numero_Pagina, Editora
FROM Livraria1.autor
WHERE Numero_Pagina >200;

-- 4- Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
SELECT Id, Livro, Numero_Pagina, Autor
FROM Livraria1.autor
WHERE Autor LIKE'C%';

-- 5- Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
SELECT Id, Autor, Editora, Ano_Publicacao, Sexo_Autor, Editora
FROM Livraria1.autor
WHERE Sexo_Autor= 'Masculino' AND Editora= 'Alta Books';

-- 6- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
SELECT Id, Livro, Autor, Numero_Pagina, Editora, Ano_Publicacao, Valor_Capa_C
FROM Livraria1.autor
WHERE Valor_Capa_C >50.00;

-- 7- Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
SELECT Id, Livro, Editora, Valor_Capa_C, Autor
FROM Livraria1.autor
WHERE Autor LIKE 'Nathalia%';

-- 8- Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
SELECT Id, Livro, Autor, Numero_Pagina, Ano_Publicacao
FROM Livraria1.autor
WHERE Ano_Publicacao= 2017;

-- 9- Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
SELECT Id, Autor, Livro, Editora, Numero_Pagina
FROM Livraria1.autor
WHERE Editora= 'Sextante' AND Numero_Pagina >200;

-- 10- Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
SELECT Id, Livro, Autor, Valor_Capa_C, Editora
FROM Livraria1.autor
WHERE Valor_Capa_C >30.00 AND Editora= 'Sextante';