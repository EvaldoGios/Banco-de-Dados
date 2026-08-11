CREATE DATABASE gestao_escolar_evaldo;

CREATE TABLE aluno (
	id INT,
    nome VARCHAR(45),
    data_nascimento DATE,
    telefone CHAR(13)
);

INSERT INTO aluno (id, nome , data_nascimento, telefone) VALUES 
(1, 'Evaldo Gioseffi', '2007-12-25', '(24)998431653'),
(2, 'Edimilsinho Junior', '2007-01-02', '(24)676767677'),
(3, 'Vinicin Relíquia', '2006-02-01', '(24)767676767'),
(4, 'Tung Tung Sahur', '2025-12-25', '(24)123456789'),
(5, 'Klebinho Farma Aura', '2026-11-08', '(24)987654321');

select * from aluno;
select * from aluno;

CREATE TABLE turma (
	id INT,
    nome_turma VARCHAR(45),
    turno ENUM('Manha', 'Tarde', 'Noite'),
    ano_letivo VARCHAR(45)
);

INSERT INTO turma (id, nome_turma, turno, ano_letivo) VALUES
(1, 'Turminha_1', 'Tarde', '2026'),
(2, 'Turminha_2', 'Noite', '2026');

select * from aluno;

select * from turma;