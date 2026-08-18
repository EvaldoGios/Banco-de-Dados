CREATE DATABASE atividades_alter_evaldo;

USE atividades_alter_evaldo;

/* ============================================================
   TABELAS BASE PARA OS EXERCÍCIOS DE ALTER TABLE
   (NÃO ALTERE ESSA PARTE)
   ============================================================ */

CREATE TABLE pacientes (
    id_paciente VARCHAR(100),   -- deveria ser INT
    nome INT,                   -- deveria ser VARCHAR
    data_nascimento VARCHAR(8), -- deveria ser DATE
    altura VARCHAR(5),          -- deveria ser DECIMAL(4,2)
    peso BOOLEAN                -- deveria ser DECIMAL(5,2)
);

CREATE TABLE veiculos_empresa (
    id_veiculo TEXT,        -- deveria ser INT
    placa DATE,             -- deveria ser CHAR(7)
    modelo INT,             -- deveria ser VARCHAR
    ano VARCHAR(10),        -- deveria ser INT
    valor BOOLEAN           -- deveria ser DECIMAL(10,2)
);

CREATE TABLE contas_bancarias (
    numero_conta DATE,      -- deveria ser CHAR(10)
    titular BOOLEAN,        -- deveria ser VARCHAR
    saldo VARCHAR(15),      -- deveria ser DECIMAL(10,2)
    limite INT,             -- deveria ser DECIMAL(10,2)
    ativa VARCHAR(10)       -- poderia ser BOOLEAN ou ENUM('ativa','inativa')
);

CREATE TABLE turmas (
    id_turma VARCHAR(20),   -- deveria ser INT
    nome BOOLEAN,           -- deveria ser VARCHAR
    carga_horaria VARCHAR(5), -- deveria ser INT
    sala INT,
    turno INT               -- poderia ser ENUM('manhã','tarde','noite')
);

CREATE TABLE reservas_sala (
    id_reserva VARCHAR(50), -- deveria ser INT
    id_turma DATE,          -- deveria ser INT (FK de turmas)
    data_reserva INT,       -- deveria ser DATE
    hora_inicio VARCHAR(10),-- deveria ser TIME
    observacao BOOLEAN      -- deveria ser VARCHAR(255)
);

/* ============================================================
   EXERCÍCIOS – ESCREVA OS COMANDOS ALTER TABLE ABAIXO
   (NÃO USE INDEX AINDA)
   ============================================================ */

/* ---------------------- PACIENTES ---------------------- */

-- Exercício 1 (pacientes)
-- Ajustar o tipo da coluna id_paciente de VARCHAR(100) para INT.
	alter table pacientes modify column id_paciente INT;

-- Exercício 2 (pacientes)
-- Ajustar o tipo da coluna nome de INT para VARCHAR(100).
	alter table pacientes modify column nome VARCHAR(100);

-- Exercício 3 (pacientes)
-- Ajustar o tipo da coluna data_nascimento para DATE.
	alter table pacientes modify column data_nascimento DATE;

-- Exercício 4 (pacientes)
-- Adicionar a coluna telefone VARCHAR(20) para armazenar o telefone do paciente.
	alter table pacientes add column telefone VARCHAR(20);
    
-- Exercício 5 (pacientes)
-- Renomear a coluna altura para altura_metros e já corrigir o tipo para DECIMAL(4,2).
	alter table pacientes change column altura altura_metros DECIMAL(4,2);
    
    describe pacientes;

/* ------------------ VEICULOS_EMPRESA ------------------- */

-- Exercício 6 (veiculos_empresa)
-- Ajustar o tipo da coluna placa de DATE para CHAR(7).
	alter table veiculos_empresa modify column placa CHAR(7);

-- Exercício 7 (veiculos_empresa)
-- Ajustar o tipo da coluna valor para DECIMAL(10,2).
	alter table veiculos_empresa modify column valor DECIMAL(10,2);

-- Exercício 8 (veiculos_empresa)
-- Adicionar a coluna cor VARCHAR(30) para armazenar a cor do veículo.
	alter table veiculos_empresa add column cor VARCHAR(30);

-- Exercício 9 (veiculos_empresa)
-- Renomear a coluna modelo para modelo_veiculo, mantendo o tipo VARCHAR(60)
-- (se necessário, já aproveite para ajustar o tipo para VARCHAR(60)).
	alter table veiculos_empresa change column modelo modelo_veiculo VARCHAR(60);
    
    describe veiculos_empresa;

/* ------------------ CONTAS_BANCARIAS ------------------- */

-- Exercício 10 (contas_bancarias)
-- Ajustar o tipo da coluna numero_conta para CHAR(10).
	alter table contas_bancarias modify column numero_conta CHAR(10);

-- Exercício 11 (contas_bancarias)
-- Ajustar o tipo da coluna saldo para DECIMAL(10,2).
	alter table contas_bancarias modify column saldo DECIMAL(10,2);

-- Exercício 12 (contas_bancarias)
-- Adicionar a coluna data_abertura DATE para registrar quando a conta foi criada.
	alter table contas_bancarias add column data_abertura DATE;
    
    describe contas_bancarias;

/* ------------------------ TURMAS ------------------------ */

-- Exercício 13 (turmas)
-- Renomear a coluna nome para nome_turma e ajustar o tipo para VARCHAR(80).
	alter table turmas change column nome nome_turma VARCHAR(60);

-- Exercício 14 (turmas)
-- Adicionar a coluna modalidade ENUM('presencial','online') para indicar o tipo de turma.
	alter table turmas add column modalidade ENUM ('Presencial', 'Online');
    
    describe turmas;

/* -------------------- RESERVAS_SALA -------------------- */

-- Exercício 15 (reservas_sala)
-- Ajustar o tipo da coluna data_reserva para DATE e o tipo da coluna hora_inicio para TIME.
	alter table reservas_sala modify column data_reserva DATE;
    alter table reservas_sala modify column hora_inicio TIME;

/* ------------------- DESAFIO FINAL --------------------- */

-- Desafio (reservas_sala)
-- Após concluir os ajustes anteriores na tabela reservas_sala,
-- excluir a coluna observacao (DROP COLUMN).

	alter table reservas_sala drop column observacao;
    
    describe reservas_sala;
