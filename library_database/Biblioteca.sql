CREATE TABLE `livros` (
  `livro_id` INT PRIMARY KEY AUTO_INCREMENT,
  `titulo` VARCHAR(255),
  `autor` VARCHAR(255),
  `genero` VARCHAR(255),
  `sinopse` TEXT,
  `formato` VARCHAR(50),
  `preco` DECIMAL(10, 2)
);


CREATE TABLE `autor` (
  `autor_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `pseudonimo` VARCHAR(255),
  `telefone` VARCHAR(255),
  `email` VARCHAR(255)
);


CREATE TABLE `editora` (
  `editora_id` INT PRIMARY KEY AUTO_INCREMENT,
  `nome` VARCHAR(255),
  `endereco` VARCHAR(255),
  `telefone` VARCHAR(255),
  `email` VARCHAR(255)
);

