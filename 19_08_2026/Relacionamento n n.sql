drop database if exists escola_teste;
create database escola_teste;
use escola_teste;

create table aluno (
	id_aluno int primary key auto_increment,
    nome varchar(60),
    cpf char(11) unique,
    data_nascimento date,
    email varchar(80)
);

create table turma (
	id_turma int primary key auto_increment,
    codigo_turma char(10),
    curso varchar (60),
    turno varchar (20),
    sala varchar(10)
);

create table aluno_turma (
	id_aluno int,
    id_turma int,
    foreign key (id_aluno) references aluno (id_aluno),
    foreign key (id_turma) references turma (id_turma)
);