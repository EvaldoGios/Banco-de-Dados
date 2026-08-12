-- Criar banco de dados
CREATE DATABASE papelaria_evaldo; #Faltou "A" no DATABASE e ";"

USE papelaria_evaldo; #Faltou ";"

-- Criar tabela produtos
CREATE TABLE produtos (
id INT PRIMARY KEY AUTO_INCREMENT , #Faltou ","
nome VARCHAR(50), #Faltou "()" do VARCHAR
preco DECIMAL(10,2), #"DECIMAL" escrito errado e faltou ","
quantidade INT,
ativo BOOL #"," no ultimo
);

-- Inserir registros
INSERT INTO produtos (nome, preco, quantidade, ativo) VALUES #Faltou "," e "s" em "produto"
('Caneta Azul', 2.50, 100, TRUE), #Valor separado de forma errada
('Lápis', 1.20, 200, TRUE),
('Caderno', 15.00, 50, TRUE), #Faltou "TRUE"
('Borracha', 0.5, 300, TRUE); #"TRUE" no lugar do "yes"

-- Consultar dados
SELECT nome, preco FROM produtos; #Faltou ";"

drop table produtos;
