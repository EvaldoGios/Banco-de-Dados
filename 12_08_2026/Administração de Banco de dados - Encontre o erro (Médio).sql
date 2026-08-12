-- criação do banco
CREATE DATABASE empresa_tech_evaldo; #Faltou o "A" do "DATABASE" e ";" no final
USE empresa_tech_evaldo; #"tech" escrito errado

-- tabela setores
CREATE TABLE setores (
	id_setor INT PRIMARY KEY AUTO_INCREMENT,
	nome_setor VARCHAR(50), #Faltou ","
	localizacao VARCHAR(30) #O ultimo não usa ","
);

-- tabela funcionarios
CREATE TABLE funcionarios (
	id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
	nome_funcionario VARCHAR(80), #Faltou ","
	salario DECIMAL(8,2), #Faltou "," e a separação por ","
	data_admissao DATE,
	id_setor INT #O ultimo não usa ","
);

-- inserindo setores
INSERT INTO setores (nome_setor, localizacao) VALUES
	('Administrativo', '1º andar'), #Falou ","
	('Financeiro', '2º andar'),
	('Produção', 'Galpão A'),
	('Limpeza', 'Térreo'); #Faltou ","

select * from setores; #setores_empresa escrito errado

-- inserindo funcionários
INSERT INTO funcionarios (nome_funcionario, salario, data_admissao, id_setor) VALUES
('Carlos Silva', 3500.00, '2022-03-01', 1), #Separação por "."
('Maria Souza', 4100.00, '2021-08-10', 2), #Faltou "," para a separação dos valores
('João Lima', 2800.00, '2023-02-20' , 3), #Faltou "," depois da data
('Fernanda Alves', '3200.00', '2024-01-15', 4);

-- consulta
SELECT * FROM funcionarios #"FROM" escrito errado
