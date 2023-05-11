

create database if not exists biblioteca;
use biblioteca;

drop table if exists livros;

CREATE TABLE if not exists livros (
    livros_id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    editora VARCHAR(255),
    ano_publicacao INT,
    isbn VARCHAR(13) 
);



INSERT INTO Livros ( titulo, autor, editora, ano_publicacao, isbn) VALUES 
( 'A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, '9788580573466'),
( 'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, '9788532511010'),
( 'O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Martins Fontes', 1954, '9788533603149'),
( 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, '9780316769488'),
( '1984', 'George Orwell', 'Companhia Editora Nacional', 1949, '9788522106169'),
( 'Percy Jackson e o Ladrão de Raios', 'Rick Riordan', 'Intrínseca', 2005, '9788598078355');