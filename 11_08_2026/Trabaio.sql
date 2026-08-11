create database Evaldo;
use Evaldo;

create table cliente (
	id INT,
    nome VARCHAR(100),
    email VARCHAR(100),
    idade TINYINT,
    data_nascimento DATE,
    hora_cadastro TIME,
    data_hora_registro DATETIME,
    ativo TINYINT,
    genero ENUM('Masculino', 'Feminino', 'Outro'),
    saldo DECIMAL(10,2)
);

INSERT INTO cliente (
	id, nome, email, idade, data_nascimento, hora_cadastro,
    data_hora_registro, ativo, genero, saldo
    ) VALUES (
    1, 'Tung Tung Sahur', 'feijao_com_farinha@email.com', 67, '1945-06-07',
    '14:25:00', '2026-11-08 14:25:00', TRUE, 'Outro', 6767.67
);

SELECT * FROM cliente;

SELECT nome, email, idade FROM cliente;