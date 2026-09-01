-- =========================================
-- ALUNO
-- =========================================

INSERT INTO aluno (nome) VALUES
('João Pedro da Silva'),
('Mariana Oliveira Santos'),
('Lucas Gabriel Souza'),
('Ana Clara Pereira'),
('Rafael Almeida Costa'),
('Beatriz Rodrigues Lima'),
('Gustavo Henrique Martins'),
('Larissa Fernandes Rocha'),
('Pedro Augusto Barbosa'),
('Camila Vitória Mendes');


-- =========================================
-- ALUNO_TELEFONE
-- =========================================

INSERT INTO aluno_telefone (telefone, id_aluno) VALUES
('(24) 99911-2233', 1),
('(24) 99822-3344', 2),
('(21) 99733-4455', 3),
('(24) 99644-5566', 4),
('(32) 99555-6677', 5),
('(24) 99466-7788', 6),
('(21) 99377-8899', 7),
('(24) 99288-9900', 8),
('(32) 99199-0011', 9),
('(24) 99010-1122', 10);


-- =========================================
-- ALUNO_EMAIL
-- =========================================

INSERT INTO aluno_email (email, id_aluno) VALUES
('joao.silva@email.com', 1),
('mariana.santos@email.com', 2),
('lucas.souza@email.com', 3),
('ana.pereira@email.com', 4),
('rafael.costa@email.com', 5),
('beatriz.lima@email.com', 6),
('gustavo.martins@email.com', 7),
('larissa.rocha@email.com', 8),
('pedro.barbosa@email.com', 9),
('camila.mendes@email.com', 10);


-- =========================================
-- CURSO
-- =========================================

INSERT INTO curso (nome, carga_horaria) VALUES
('Ciência da Computação', 3200),
('Sistemas de Informação', 3000),
('Administração', 3000),
('Engenharia Civil', 3600),
('Licenciatura em Biologia', 3200);


-- =========================================
-- CURSO_MODALIDADE
-- =========================================

INSERT INTO curso_modalidade (modalidade, id_curso) VALUES
('Presencial', 1),
('EAD', 1),
('Presencial', 2),
('EAD', 2),
('Presencial', 3),
('Presencial', 4),
('Presencial', 5);


-- =========================================
-- DISCIPLINA
-- =========================================

INSERT INTO disciplina (nome, carga_horaria) VALUES
('Algoritmos e Programação', 80),
('Banco de Dados', 80),
('Engenharia de Software', 60),
('Redes de Computadores', 60),
('Matemática Discreta', 60),
('Gestão de Pessoas', 60),
('Contabilidade Básica', 60),
('Cálculo I', 80),
('Biologia Celular', 80),
('Genética', 60),
('Ecologia', 60),
('Anatomia e Fisiologia', 80);


-- =========================================
-- GRADE_CURRICULAR
-- =========================================

-- Ciência da Computação
INSERT INTO grade_curricular (id_curso, id_disciplina) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- Sistemas de Informação
INSERT INTO grade_curricular (id_curso, id_disciplina) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4);

-- Administração
INSERT INTO grade_curricular (id_curso, id_disciplina) VALUES
(3, 6),
(3, 7),
(3, 5);

-- Engenharia Civil
INSERT INTO grade_curricular (id_curso, id_disciplina) VALUES
(4, 8),
(4, 5);

-- Licenciatura em Biologia
INSERT INTO grade_curricular (id_curso, id_disciplina) VALUES
(5, 9),
(5, 10),
(5, 11),
(5, 12);


-- =========================================
-- BIBLIOGRAFIA
-- =========================================

INSERT INTO bibliografia (referencia, id_disciplina) VALUES
('CORMEN, Thomas H. et al. Algoritmos: Teoria e Prática.', 1),
('ELMASRI, Ramez; NAVATHE, Shamkant B. Sistemas de Banco de Dados.', 2),
('SOMMERVILLE, Ian. Engenharia de Software.', 3),
('TANENBAUM, Andrew S. Redes de Computadores.', 4),
('ROSEN, Kenneth H. Matemática Discreta e suas Aplicações.', 5),
('CHIAVENATO, Idalberto. Gestão de Pessoas.', 6),
('MARION, José Carlos. Contabilidade Básica.', 7),
('STEWART, James. Cálculo.', 8),
('ALBERTS, Bruce et al. Biologia Molecular da Célula.', 9),
('GRIFFITHS, Anthony J. F. Introdução à Genética.', 10),
('ODUM, Eugene P. Ecologia.', 11),
('GUYTON, Arthur C. Tratado de Fisiologia Médica.', 12);


-- =========================================
-- TURMA
-- =========================================

INSERT INTO turma (nome, id_curso) VALUES
('CC-2026-1A', 1),
('CC-2026-1B', 1),
('SI-2026-1A', 2),
('ADM-2026-1A', 3),
('ENG-2026-1A', 4),
('BIO-2026-1A', 5),
('BIO-2026-2A', 5);


-- =========================================
-- HORARIO
-- =========================================

INSERT INTO horario (dia_semana, hora_inicio, hora_final, id_turma) VALUES
('Segunda-feira', '18:30:00', '20:10:00', 1),
('Quarta-feira', '18:30:00', '20:10:00', 1),
('Terça-feira', '18:30:00', '20:10:00', 2),
('Quinta-feira', '18:30:00', '20:10:00', 2),
('Segunda-feira', '19:00:00', '20:40:00', 3),
('Quarta-feira', '19:00:00', '20:40:00', 3),
('Terça-feira', '18:30:00', '20:10:00', 4),
('Quinta-feira', '18:30:00', '20:10:00', 4),
('Segunda-feira', '18:30:00', '20:10:00', 5),
('Quarta-feira', '18:30:00', '20:10:00', 5),
('Terça-feira', '18:30:00', '20:10:00', 6),
('Quinta-feira', '18:30:00', '20:10:00', 6),
('Sexta-feira', '18:30:00', '20:10:00', 7);


-- =========================================
-- MATRICULA
-- =========================================

INSERT INTO matricula (data_matricula, id_aluno, id_turma) VALUES
('2026-01-15', 1, 1),
('2026-01-15', 2, 1),
('2026-01-16', 3, 2),
('2026-01-16', 4, 3),
('2026-01-17', 5, 4),
('2026-01-17', 6, 5),
('2026-01-18', 7, 6),
('2026-01-18', 8, 6),
('2026-01-19', 9, 7),
('2026-01-19', 10, 7);


-- =========================================
-- DOCUMENTO
-- =========================================

INSERT INTO documento (nome_documento, numero_documento, data_entrega, id_matricula) VALUES
('RG', '12.345.678-9', '2026-01-15', 1),
('CPF', '12345678901', '2026-01-15', 1),
('RG', '23.456.789-0', '2026-01-15', 2),
('CPF', '23456789012', '2026-01-15', 2),
('RG', '34.567.890-1', '2026-01-16', 3),
('CPF', '34567890123', '2026-01-16', 3),
('RG', '45.678.901-2', '2026-01-16', 4),
('CPF', '45678901234', '2026-01-16', 4),
('RG', '56.789.012-3', '2026-01-17', 5),
('CPF', '56789012345', '2026-01-17', 5),
('RG', '67.890.123-4', '2026-01-17', 6),
('CPF', '67890123456', '2026-01-17', 6),
('RG', '78.901.234-5', '2026-01-18', 7),
('CPF', '78901234567', '2026-01-18', 7),
('RG', '89.012.345-6', '2026-01-18', 8),
('CPF', '89012345678', '2026-01-18', 8),
('RG', '90.123.456-7', '2026-01-19', 9),
('CPF', '90123456789', '2026-01-19', 9),
('RG', '10.234.567-8', '2026-01-19', 10),
('CPF', '01234567890', '2026-01-19', 10);


-- =========================================
-- PROFESSOR
-- =========================================

INSERT INTO professor (nome, cpf) VALUES
('Carlos Eduardo Mendes', '11122233344'),
('Fernanda Maria Oliveira', '22233344455'),
('Ricardo Antônio Souza', '33344455566'),
('Patrícia Cristina Alves', '44455566677'),
('Marcelo Henrique Rocha', '55566677788'),
('Juliana Martins Ferreira', '66677788899'),
('André Luiz Barbosa', '77788899900'),
('Renata Gomes Pereira', '88899900011');


-- =========================================
-- TURMA_PROFESSOR
-- =========================================

INSERT INTO turma_professor (id_turma, id_curso, id_professor) VALUES
(1, 1, 1),
(1, 1, 2),
(2, 1, 3),
(2, 1, 1),
(3, 2, 4),
(3, 2, 1),
(4, 3, 5),
(5, 4, 6),
(6, 5, 7),
(6, 5, 8),
(7, 5, 7);


-- =========================================
-- PROFESSOR_TELEFONE
-- =========================================

INSERT INTO professor_telefone (telefone, id_professor) VALUES
('(24) 98811-2233', 1),
('(24) 98722-3344', 2),
('(21) 98633-4455', 3),
('(24) 98544-5566', 4),
('(32) 98455-6677', 5),
('(24) 98366-7788', 6),
('(21) 98277-8899', 7),
('(24) 98188-9900', 8);


-- =========================================
-- PROFESSOR_EMAIL
-- =========================================

INSERT INTO professor_email (email, id_professor) VALUES
('carlos.mendes@universidade.edu.br', 1),
('fernanda.oliveira@universidade.edu.br', 2),
('ricardo.souza@universidade.edu.br', 3),
('patricia.alves@universidade.edu.br', 4),
('marcelo.rocha@universidade.edu.br', 5),
('juliana.ferreira@universidade.edu.br', 6),
('andre.barbosa@universidade.edu.br', 7),
('renata.pereira@universidade.edu.br', 8);