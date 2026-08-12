drop database if exists loja_senai;
CREATE DATABASE loja_senai;
USE loja_senai;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(80),
    cidade VARCHAR(50),
    idade INT,
    genero ENUM('M', 'F')
);

INSERT INTO clientes (id_cliente, nome, email, cidade, idade, genero) VALUES
(1, 'Ana Souza', 'ana.souza@gmail.com', 'Rio de Janeiro', 28, 'F'),
(2, 'Bruno Lima', 'bruno.lima@yahoo.com', 'São Paulo', 35, 'M'),
(3, 'Carla Torres', 'carla.torres@hotmail.com', 'Belo Horizonte', 22, 'F'),
(4, 'Diego Alves', 'diego.alves@gmail.com', 'Curitiba', 31, 'M'),
(5, 'Eduarda Ramos', 'eduarda.ramos@outlook.com', 'Niterói', 26, 'F'),
(6, 'Felipe Mendes', 'felipe.mendes@gmail.com', 'Salvador', 40, 'M'),
(7, 'Gabriela Costa', 'gabi.costa@yahoo.com', 'São Paulo', 21, 'F'),
(8, 'Henrique Silva', 'henrique.silva@gmail.com', 'Recife', 33, 'M'),
(9, 'Isabela Rocha', 'isabela.rocha@hotmail.com', 'Porto Alegre', 27, 'F'),
(10, 'João Pedro', 'joao.pedro@gmail.com', 'Vitória', 29, 'M'),
(11, 'Karen Santos', 'karen.santos@gmail.com', 'Campinas', 30, 'F'),
(12, 'Lucas Andrade', 'lucas.andrade@yahoo.com', 'Rio de Janeiro', 25, 'M'),
(13, 'Mariana Pires', 'mariana.pires@gmail.com', 'Fortaleza', 32, 'F'),
(14, 'Nicolas Melo', 'nicolas.melo@hotmail.com', 'Manaus', 24, 'M'),
(15, 'Otávio Faria', 'otavio.faria@gmail.com', 'Natal', 28, 'M'),
(16, 'Patrícia Nogueira', 'patricia.nogueira@yahoo.com', 'São Luís', 35, 'F'),
(17, 'Rafaela Lima', 'rafaela.lima@gmail.com', 'Belém', 23, 'F'),
(18, 'Samuel Barbosa', 'samuel.barbosa@gmail.com', 'João Pessoa', 34, 'M'),
(19, 'Tatiane Moraes', 'tatiane.moraes@gmail.com', 'Florianópolis', 29, 'F'),
(20, 'Vinícius Teixeira', 'vinicius.teixeira@gmail.com', 'Goiânia', 27, 'M');
