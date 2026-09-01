drop database if exists Banco_senai;
create database Banco_senai;
use Banco_senai;

create table aluno (
	id_aluno int primary key auto_increment,
    nome varchar(100)
);

create table aluno_telefone (
	id_telefone int primary key auto_increment,
    telefone varchar(20),
    id_aluno int,
    foreign key (id_aluno) references aluno (id_aluno)
);

create table aluno_email (
	id_email int primary key auto_increment,
    email varchar(150),
    id_aluno int,
    foreign key (id_aluno) references aluno (id_aluno)
);

create table curso (
	id_curso int primary key auto_increment,
    nome varchar(100),
    carga_horaria int
);

create table curso_modalidade (
	id_modalidade int primary key auto_increment,
    modalidade varchar(50),
    id_curso int,
    foreign key (id_curso) references curso (id_curso)
);

create table disciplina (
	id_disciplina int primary key auto_increment,
    nome varchar(100),
    carga_horaria int
);

create table grade_curricular (
	id_curso int,
    id_disciplina int,
    foreign key (id_curso) references curso (id_curso),
    foreign key (id_disciplina) references disciplina (id_disciplina)
);

create table bibliografia (
	id_bibliografia int primary key auto_increment,
    referencia varchar(300),
    id_disciplina int,
    foreign key (id_disciplina) references disciplina (id_disciplina)
);

create table turma (
	id_turma int primary key auto_increment,
    nome varchar(45),
    id_curso int,
    foreign key (id_curso) references curso (id_curso)
);

create table horario (
	id_horario int primary key auto_increment,
    dia_semana varchar(20),
    hora_inicio time,
    hora_final time,
    id_turma int,
	foreign key (id_turma) references turma (id_turma)
);

create table matricula (
	id_matricula int primary key auto_increment,
    data_matricula date,
    id_aluno int,
    id_turma int,
    foreign key (id_turma) references turma (id_turma),
    foreign key (id_aluno) references aluno (id_aluno)
);

create table documento (
	id_documento int primary key auto_increment,
    nome_documento varchar(100),
    numero_documento varchar(45),
    data_entrega date,
    id_matricula int,
	foreign key (id_matricula) references matricula (id_matricula)
);

create table professor (
	id_professor int primary key auto_increment,
    nome varchar(100),
    cpf char(11)
);

create table turma_professor (
	id_turma int,
    id_curso int,
    id_professor int,
    foreign key (id_turma) references turma (id_turma),
	foreign key (id_curso) references curso (id_curso),
	foreign key (id_professor) references professor (id_professor)
);

create table professor_telefone (
	id_telefone int primary key auto_increment,
    telefone varchar(20),
    id_professor int,
    foreign key (id_professor) references professor (id_professor)
);

create table professor_email (
	id_email int primary key auto_increment,
    email varchar(150),
    id_professor int,
    foreign key (id_professor) references professor (id_professor)
);

SELECT * FROM aluno;

SELECT nome, carga_horaria FROM curso;

SELECT nome, carga_horaria FROM curso WHERE carga_horaria > 3000;

SELECT * FROM aluno ORDER BY nome;

select a.nome as nome_aluno, c.nome as nome_curso from aluno as a
inner join curso as c;

select b.referencia, d.nome, d.carga_horaria from bibliografia as b
inner join disciplina as d
on d.id_disciplina = b.id_disciplina
where d.carga_horaria >= 60
group by d.nome;