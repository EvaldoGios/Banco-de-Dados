drop database if exists DB_FITLIFE;
create database DB_FITLIFE;
USE DB_FITLIFE;

create table usuarios (
	id_usuario int primary key,
    nome varchar(100),
    email varchar(100),
    data_nascimento date,
    cidade varchar(50)
);

create table metas (
	id_meta int primary key,
    id_usuario int,
    tipo_meta enum('Peso', 'Distancia', 'Calorias'),
    valor_alvo decimal(8,2),
    data_inicio date,
    status enum('Ativa', 'Concluida'),
    foreign key (id_usuario) references usuarios (id_usuario)
);

create table atividades (
	id_atividade int primary key,
    id_usuario int,
    tipo_exercicio varchar(50),
    duracao_minutos int,
    calorias_queimadas int,
    data_registro date,
    foreign key (id_usuario) references usuarios (id_usuario)
);

-- Atualização de Dados do Usuário: O usuário com id_usuario = 5 mudou-se. Utilize o
-- comando UPDATE para alterar o campo cidade deste usuário para 'São Paulo'.
	update usuarios set cidade = 'São Paulo' where id_usuario = 5;
	select * from usuarios where id_usuario = 5;

-- Conclusão de Meta: O usuário 'Ana Silva' atingiu uma de suas metas. Atualize o status da
-- meta com id_meta = 2 para 'Concluida'.
	update metas set status = 'Concluida' where id_meta = 2;
	select * from metas where id_meta = 2;
    
-- Metas Ativas (Filtro Simples): Liste o nome, email e o status de todos os usuários que
-- possuem pelo menos uma meta com status = 'Ativa'.
	select u.nome, u.email, m.status from usuarios as u 
	inner join metas as m 
	on u.id_usuario = m.id_usuario
	where status like 'Ativa';

-- Usuários por Região (Agregação Simples): Utilize o comando COUNT para informar quantos
-- usuários moram na cidade do 'Rio de Janeiro'.
	select count(*) as qtd_usuarios from usuarios where cidade like 'Rio de Janeiro';
    
-- Histórico de Atividades (Join Simples): Faça uma consulta que mostre o nome do usuário
-- junto com o tipo_exercicio que ele realizou.
	select u.nome, a.tipo_exercicio from usuarios as u
    inner join atividades as a
    on u.id_usuario = a.id_usuario;

-- Progresso do Usuário (Join com Filtro): Liste o nome do usuário, tipo_meta, o valor_alvo e o
-- status de todas as metas criadas pela usuária de nome 'Juliana Castro'.
	select u.nome, m.tipo_meta, m.valor_alvo, status from usuarios as u
    inner join metas as m
    on u.id_usuario = m.id_usuario
    where nome like 'Juliana Castro';