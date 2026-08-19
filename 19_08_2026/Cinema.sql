drop database if exists cinema;
create database cinema;
use cinema;

create table clientes (
	id_cliente int primary key auto_increment,
    nome_cliente varchar(60),
    estado varchar(45),
    regiao varchar(45),
    sexo varchar(10),
    data_nascimento date,
    data_conta date
);

create table filmes (
	id_filme int primary key auto_increment,
    titulo varchar(60),
    genero varchar(45),
    duracao varchar(45),
    ano_lancamento int,
    preco_aluguel double
);

create table atores (
	id_ator int primary key auto_increment,
    nome_ator varchar(60),
    ano_nascimento date,
    nacionalidade varchar(20),
    sexo varchar(10)
);

create table alugueis (
	id_aluguel varchar(45) primary key,
    id_cliente int,
    id_filme int,
    nota double,
    data_aluguel date,
    foreign key (id_cliente) references clientes (id_cliente),
    foreign key (id_filme) references filmes (id_filme)
);

create table atuacoes (
	id_protagonista int primary key,
    id_filme int,
    id_ator int,
    foreign key (id_filme) references filmes (id_filme),
    foreign key (id_ator) references atores (id_ator)
);

insert into clientes (nome_cliente, estado, regiao, sexo, data_nascimento, data_conta) values
	('Evaldo', 'Rio de Janeiro', 'Sudeste', 'Masculino', '2007-12-25', '2026-08-19'),
	('Tung Tung Sahur', 'Angola', 'Central', 'Masculino', '2067-11-25', '2026-08-27'),
	('Tião', 'Minas', 'Sudeste', 'Masculino', '1945-6-11', '2030-09-19');

insert into filmes (titulo, genero, duracao, ano_lancamento, preco_aluguel) values
	('Diário de uma paixão', 'Romance, Drama', '2 horas', 2004, 89.90);
    
insert into atores (nome_ator, ano_nascimento, nacionalidade, sexo) values
	('Ryan Gosling', 1980-11-12, 'Estadunidence', 'Masculino'),
    ('Rachel McAdams', 1978-11-17, 'Estadunidence', 'Feminino'),
    ('James Garner', 1928-04-7, 'Estadunidence', 'Masculino');
    
insert into atuacoes (id_protagonista, id_filme, id_ator) values
	(1, 1, 1), (2, 1, 2), (3, 1, 3);
    
insert into alugueis (id_aluguel, id_cliente, id_filme, nota, data_aluguel) values
	('1', 1, 1, 10, '2026-08-20'),
    ('2', 3, 1, 10, '2020,06-07');
    
    select * from clientes;
    select * from atores;
    
    select * from filmes;
    
    select * from alugueis;
