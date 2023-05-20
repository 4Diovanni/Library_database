

create database if not exists biblioteca;
use biblioteca;

drop table if exists livros;


CREATE TABLE autor (
  autor_id int PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255) ,
  pseudonimo VARCHAR(255),
  telefone VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE editora (
  editora_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  endereco VARCHAR(255),
  telefone VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE livros (
  livros_id INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(255),
  genero VARCHAR(255),
  sinopse TEXT,
  formato VARCHAR(50),
  preco DECIMAL(10, 2),
  autores_id INT,
  editoras_id INT,
  FOREIGN KEY (autores_id) REFERENCES autor (autor_id),
  FOREIGN KEY (editoras_id) REFERENCES editora (editora_id)
);
-- autor
INSERT INTO autor (nome, pseudonimo, telefone, email)
VALUES 
('J.R.R. Tolkien', 'J.R.R.T.', '+44 111222333', 'jrrtolkien@example.com'),
('J.D. Salinger', 'J.D.S.', '+1 987654321', 'jdsalinger@example.com'),
('George Orwell', 'G. Orwell', '+44 123456789', 'georgeorwell@example.com'),
('Rick Riordan', 'Rick R.', '+1 111222333', 'rickriordan@example.com'),
('João Guimarães Rosa', 'Guimarães Rosa', '+55 123456789', 'guimaraesrosa@example.com'),
('Machado de Assis', 'Machado', '+55 987654321', 'machadodeassis@example.com'),
('Graciliano Ramos', 'Graciliano R.', '+55 111222333', 'gracilianoramos@example.com'),
('Aluísio Azevedo', 'Aluísio A.', '+55 123456789', 'aluisioazevedo@example.com'),
('Mário de Andrade', 'Mário A.', '+55 987654321', 'mariodeandrade@example.com');

-- editora
INSERT INTO editora (nome, endereco, telefone, email)
VALUES 
('Intrínseca', 'Rua das Editoras, 123', '+55 123456789', 'contato@intrinseca.com'),
('Rocco', 'Avenida das Publicações, 456', '+55 987654321', 'contato@rocco.com'),
('Martins Fontes', 'Travessa dos Livros, 789', '+55 111222333', 'contato@martinsfontes.com'),
('Little, Brown and Company', 'Street of Publishers, 789', '+1 123456789', 'contact@littlebrown.com'),
('Companhia Editora Nacional', 'Avenue of Books, 456', '+55 987654321', 'contact@editoranacional.com'),
('Nova Fronteira', 'Square of Editions, 123', '+55 111222333', 'contact@novafronteira.com'),
('Companhia das Letras', 'Book Street, 789', '+55 123456789', 'contact@companhiadasletras.com'),
('Martin Claret', 'Editorial Road, 456', '+55 987654321', 'contact@martinclaret.com'),
('Penguin Companhia', 'Publisher Avenue, 123', '+55 111222333', 'contact@penguincompanhia.com');

-- livros
INSERT INTO livros (titulo, genero, sinopse, formato, preco, autores_id, editoras_id)
VALUES 
('A Culpa é das Estrelas', 'Drama', 'Hazel Grace é uma paciente terminal...', 'Capa Dura', 29.99, 1, 1),
('Harry Potter e a Pedra Filosofal', 'Fantasia', 'Harry Potter descobre que é um bruxo...', 'Brochura', 39.99, 2, 2),
('O Senhor dos Anéis: A Sociedade do Anel', 'Fantasia', 'Um grupo de heróis se une para destruir...', 'Capa Dura', 49.99, 3, 3),
('The Catcher in the Rye', 'Ficção', 'Holden Caulfield narra seus dias...', 'Brochura', 19.99, 4, 4),
('1984', 'Ficção', 'Winston Smith vive em um regime totalitário...', 'Brochura', 24.99, 5, 5),
('Percy Jackson e o Ladrão de Raios', 'Fantasia', 'Percy Jackson descobre ser um semideus...', 'Brochura', 14.99, 6, 1),
('Grande Sertão: Veredas', 'Ficção', 'Um dos principais romances da literatura brasileira...', 'Capa Dura', 34.99, 7, 3),
('Memórias Póstumas de Brás Cubas', 'Ficção', 'Brás Cubas narra suas memórias...', 'Brochura', 27.99, 8, 7),
('Vidas Secas', 'Drama', 'A saga de uma família de retirantes no sertão nordestino...', 'Brochura', 19.99, 9, 5);


