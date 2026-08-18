create database qualquer_coisa;
use qualquer_coisa;

create table clientes (
	id VARCHAR(200),
	nome INT,
	cpf DATE,
	data_nascimento VARCHAR(10),
	renda_mensal BOOLEAN
);

describe clientes;

alter table clientes modify column id int;
alter table clientes modify column nome VARCHAR(120);
alter table clientes modify column cpf CHAR(11);
alter table clientes modify column data_nascimento DATE;
alter table clientes modify column renda_mensal DECIMAL;

create table produtos (
	id TEXT,
    nome BOOLEAN,
    preco VARCHAR(5),
    quantidade DECIMAL(10,2),
    ativo INT
);

describe produtos;

alter table produtos modify column id int;
alter table produtos modify column nome VARCHAR(120);
alter table produtos modify column preco DECIMAL(10,2);
alter table produtos modify column quantidade INT;
alter table produtos modify column ativo BOOLEAN;

create table pedidos (
	id VARCHAR(100),
    cliente_id DATE,
    valor_total CHAR(5),
    data_pedido INT,
    STATUS VARCHAR(3)
);

describe produtos;

alter table pedidos modify column id INT;
alter table pedidos modify column cliente_id INT;
alter table pedidos modify column valor_total DECIMAL;
alter table pedidos modify column data_pedido DATE;
alter table pedidos modify column status ENUM ('Bão', 'Bão demais', 'Muito bão demais da conta zé');
