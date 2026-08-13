drop database if exists GigaByteDB;

create database GigaByteDB;

create table produtos (
	sku VARCHAR(20) primary key,
    nome_produto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL DEFAULT 0
);

#Relatório 1 (Marketing): "Flash Sale"
select * from produtos where categoria like 'Hardware' and quantidade_estoque > 0;

#Relatório 2 (Compras): "Auditoria de Estoque"
select nome_produto, sku from produtos where quantidade_estoque = 0;

#Relatório 3 (Marketing): "Itens de Luxo"
select nome_produto, preco from produtos order by preco desc limit 2;

#Relatório 4 (Busca): "Itens Específicos"
select * from produtos where nome_produto like '%Placa%';

#Relatório 5 (Finanças): "Produtos Mais Caros por Categoria"
select * from produtos where categoria like 'Periféricos' order by preco desc limit 3;