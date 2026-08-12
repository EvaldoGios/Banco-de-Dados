-- Criação do banco
CREATE DATABASE biblioteca_evaldo; #Faltou "A" do "DATABASE" e ";" no final
USE biblioteca_evaldo; #"biblioteca" escrito errado

-- Tabela de livros
CREATE TABLE livros (
  id_livro INT AUTO_INCREMENT PRIMARY KEY, #Faltou ","
  titulo VARCHAR(80) NOT NULL,
  ano_publicacao INT, #Faltou ","
  preco DECIMAL(10,2),
  estoque INT #O ultimo não usa ","
);

-- Tabela de autores
CREATE TABLE autor (
  id_autor INT AUTO_INCREMENT PRIMARY KEY,
  nome_autor VARCHAR(80) NOT NULL,
  nacionalidade VARCHAR(40)
);

-- Inserções em LIVROS (nomes e ordens inconsistentes)
INSERT INTO livros (titulo, preco, estoque) VALUES #Faltou "s" no "livros
('Dom Casmurro', 39.90, 12); #Separação feita por "."
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES #Valor "estoque" e #ano_publicacao" e "preco" escritos errados
('Capitães da Areia', 1937, 45.50, 20);
INSERT INTO livros (titulo, ano_publicacao, preco) VALUES
('Vidas Secas', 1938, 49.90); #Ordem dos valores trocadas
INSERT INTO livros (titulo, ano_publicacao, preco, estoque) VALUES
('Grande Sertão: Veredas', '1956', '59.90', '10'); #Estoque escrito por extenso e separaçao por ","

-- Inserções em AUTORES (nome de tabela/colunas)
INSERT INTO autor (nome_autor, nacionalidade) VALUES #Autor escrito errado, valores escritos errados
('Machado de Assis', 'Brasil');
INSERT INTO autor (nome_autor, nacionalidade) VALUES #"nacionalidade" escrito separado
('Jorge Amado', 'Brasil');
INSERT INTO autor (nome_autor) VALUES
( 'Guimarães Rosa' ); #"," errada

-- SELECTs (nomes inconsistentes)
SELECT * FROM livros; #Escrito errado
SELECT * FROM autor; #Escrito errado
SELECT * FROM livros; #Faltou ";"
SELECT * FROM autor;
