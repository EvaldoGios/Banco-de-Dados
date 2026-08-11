CREATE DATABASE mercado_local;

CREATE TABLE produto (
	id INT,
    nome_produto VARCHAR(45),
    preco DECIMAL(10,2),
    estoque INT
);

INSERT INTO produto (id, nome_produto, preco, estoque) VALUES
(1, 'Feijao', '20.9', '67'),
(2, 'Farinha', '20.8', '76'),
(3, 'Arroz', '20.7', '677'),
(4, 'Trigo', '20.6', '766'),
(5, 'Jubilau', '20.5', '676');

CREATE TABLE pedido_evaldo (
	id INT,
    data_pedido DATETIME,
    valor_total DECIMAL(10,2),
    forma_pagamento ENUM('PIX', 'Credito', 'Debito')
);

INSERT INTO pedido_evaldo (id, data_pedido, valor_total, forma_pagamento) VALUES
(1, '2026-03-02 16:39:00', '25.7', 'PIX'),
(2, '2026-03-02 16:39:00', '25.6', 'Debito');

select * from produto;

select * from pedido_evaldo;