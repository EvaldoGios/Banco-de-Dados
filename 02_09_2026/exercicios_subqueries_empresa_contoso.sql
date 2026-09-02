-- ============================================================
-- EXERCÍCIOS - SUBQUERIES
-- Banco: empresa_contoso
-- Tabela principal: funcionarios
--
-- Objetivo:
-- Praticar consultas utilizando subqueries de forma progressiva.
--
-- IMPORTANTE:
-- Leia o enunciado com atenção e utilize obrigatoriamente
-- o recurso indicado em cada exercício.
-- ============================================================

USE empresa_contoso;


-- ============================================================
-- EXERCÍCIO 1 - SUBQUERY SIMPLES COM MÉDIA
-- Nível: MUITO FÁCIL
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> AVG()
--
-- Faça uma consulta que mostre:
--   • nome
--   • cargo
--   • salario
--
-- Devem aparecer apenas os funcionários que recebem
-- acima da média salarial da empresa.
--
-- A média salarial deve ser calculada utilizando uma
-- subquery dentro do WHERE.
--
-- Desenvolva abaixo:

	select nome, cargo, salario from funcionarios 
    where salario > ( 
    select round(avg(salario), 2)
    );

-- ============================================================
-- EXERCÍCIO 2 - FUNCIONÁRIOS ABAIXO DA MÉDIA
-- Nível: FÁCIL
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> AVG()
--
-- Faça uma consulta que mostre os funcionários que recebem
-- salário abaixo da média salarial da empresa.
--
-- Exiba:
--   • nome
--   • cargo
--   • salario
--
-- Ordene o resultado do menor salário para o maior.
--
-- Desenvolva abaixo:
	
    select nome, cargo, salario from funcionarios 
    where salario > ( 
    select round(avg(salario), 2)
    );

-- ============================================================
-- EXERCÍCIO 3 - MAIOR SALÁRIO DA EMPRESA
-- Nível: FÁCIL
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> MAX()
--
-- Faça uma consulta que mostre o funcionário ou os funcionários
-- que possuem o maior salário da empresa.
--
-- Exiba:
--   • nome
--   • cargo
--   • salario
--
-- O maior salário deve ser descoberto através de uma subquery.
--
-- Desenvolva abaixo:

	select nome, cargo, salario from funcionarios 
    where salario in (
    select max(salario) from funcionarios
    );

-- ============================================================
-- EXERCÍCIO 4 - MENOR SALÁRIO DA EMPRESA
-- Nível: FÁCIL
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> MIN()
--
-- Faça uma consulta que mostre o funcionário ou os funcionários
-- que possuem o menor salário da empresa.
--
-- Exiba:
--   • nome
--   • cargo
--   • salario
--
-- Desenvolva abaixo:

	select nome, cargo, salario from funcionarios 
    where salario in (
    select min(salario) from funcionarios
    );

-- ============================================================
-- EXERCÍCIO 5 - SUBQUERY NO SELECT
-- Nível: INTERMEDIÁRIO
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY ESCALAR
--   -> AVG()
--
-- Faça uma consulta que mostre:
--   • nome
--   • cargo
--   • salario
--   • media_empresa
--
-- A coluna media_empresa deve mostrar a média salarial
-- geral da empresa em todas as linhas.
--
-- IMPORTANTE:
-- A subquery deve aparecer dentro do SELECT.
--
-- Desenvolva abaixo:

	select nome, cargo, salario, (select round(avg(salario), 2) from funcionarios) as media_empresa from funcionarios;

-- ============================================================
-- EXERCÍCIO 6 - COMPARANDO O SALÁRIO COM A MÉDIA
-- Nível: INTERMEDIÁRIO
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> AVG()
--   -> expressão matemática
--
-- Faça uma consulta que mostre:
--   • nome
--   • salario
--   • media_empresa
--   • diferenca_para_media
--
-- A coluna diferenca_para_media deve mostrar:
--
-- salario - média salarial da empresa
--
-- Assim:
--   valor positivo -> funcionário ganha acima da média
--   valor negativo -> funcionário ganha abaixo da média
--
-- Utilize subquery para obter a média.
--
-- Desenvolva abaixo:

	select nome, salario, (select round(avg(salario), 2) from funcionarios) as media_empresa,
    salario - (select round(avg(salario), 2) from funcionarios) as diferenca_para_media_negativa,
	salario + (select round(avg(salario), 2) from funcionarios) as diferenca_para_media_positiva
    from funcionarios; 

-- ============================================================
-- EXERCÍCIO 7 - CARGOS COM SALÁRIO ACIMA DA MÉDIA
-- Nível: INTERMEDIÁRIO
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> IN
--   -> AVG()
--
-- Faça uma consulta que mostre todos os funcionários cujo cargo
-- aparece entre os cargos de funcionários que recebem acima da
-- média salarial da empresa.
--
-- Exiba:
--   • nome
--   • cargo
--   • salario
--
-- Utilize IN com uma subquery.
--
-- ATENÇÃO:
-- A subquery deve retornar a lista de cargos dos funcionários
-- que recebem acima da média.
--
-- Desenvolva abaixo:

	select nome, cargo, salario from funcionarios where cargo in 
    (select cargo from funcionarios where salario >
    (select avg(salario)
    from funcionarios))
    order by salario asc;
    -- I love Potatos!

-- ============================================================
-- EXERCÍCIO 8 - CARGOS QUE NÃO POSSUEM SALÁRIO ALTO
-- Nível: INTERMEDIÁRIO / AVANÇADO
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> NOT IN
--
-- Faça uma consulta que mostre os funcionários cujo cargo
-- NÃO aparece entre os cargos de funcionários com salário
-- maior que R$ 15.000.
--
-- Exiba:
--   • nome
--   • cargo
--   • salario
--
-- Utilize NOT IN com uma subquery.
--
-- Desenvolva abaixo:




-- ============================================================
-- EXERCÍCIO 9 - FUNCIONÁRIOS ACIMA DE 150% DA MÉDIA
-- Nível: AVANÇADO
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> AVG()
--   -> cálculo dentro do WHERE
--
-- Faça uma consulta que mostre os funcionários que recebem
-- mais de 150% da média salarial da empresa.
--
-- Em outras palavras:
--
-- salario > média * 1.5
--
-- Exiba:
--   • nome
--   • cargo
--   • salario
--
-- Ordene do maior salário para o menor.
--
-- Desenvolva abaixo:




-- ============================================================
-- EXERCÍCIO 10 - SUBQUERY COM CONTAGEM
-- Nível: AVANÇADO
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> COUNT()
--
-- Faça uma consulta que mostre:
--   • nome
--   • cargo
--   • salario
--
-- Porém, os funcionários devem aparecer apenas se a quantidade
-- total de funcionários da empresa for maior que 10.
--
-- A quantidade total deve ser obtida através de uma subquery.
--
-- Desenvolva abaixo:




-- ============================================================
-- EXERCÍCIO 11 - CLASSIFICAÇÃO COM SUBQUERY
-- Nível: AVANÇADO
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> CASE
--   -> AVG()
--
-- Faça uma consulta que mostre:
--   • nome
--   • cargo
--   • salario
--   • situacao
--
-- A coluna situacao deve funcionar da seguinte forma:
--
-- salário maior que a média da empresa
--     -> 'Acima da média'
--
-- salário igual à média
--     -> 'Na média'
--
-- salário menor que a média
--     -> 'Abaixo da média'
--
-- Utilize CASE e subquery.
--
-- Desenvolva abaixo:




-- ============================================================
-- EXERCÍCIO 12 - DESAFIO FINAL
-- Nível: DESAFIO
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> MAIS DE UMA SUBQUERY
--   -> AVG()
--   -> MAX()
--   -> CASE
--
-- Crie uma consulta de relatório mostrando:
--
--   • nome
--   • cargo
--   • salario
--   • media_empresa
--   • maior_salario_empresa
--   • classificacao
--
-- A coluna media_empresa deve ser obtida com uma subquery.
--
-- A coluna maior_salario_empresa deve ser obtida com outra
-- subquery.
--
-- A coluna classificacao deve seguir as regras:
--
-- Se salario = maior salário da empresa
--     -> 'Maior salário da empresa'
--
-- Senão, se salario > média da empresa
--     -> 'Acima da média'
--
-- Caso contrário
--     -> 'Na média ou abaixo'
--
-- Ordene o resultado pelo maior salário.
--
-- Desenvolva abaixo:




-- ============================================================
-- EXERCÍCIO EXTRA - SUBQUERY UTILIZANDO UMA VIEW
-- ============================================================
--
-- RECURSOS OBRIGATÓRIOS:
--   -> SUBQUERY
--   -> VIEW criada anteriormente
--
-- Considere que a VIEW vw_faixa_salarial já existe.
--
-- Faça uma consulta na tabela funcionarios mostrando os
-- funcionários cujo salário seja maior que a média salarial
-- dos funcionários classificados como 'Alta' dentro da VIEW
-- vw_faixa_salarial.
--
-- Exiba:
--   • nome
--   • cargo
--   • salario
--
-- A média deve ser obtida por uma subquery consultando a VIEW.
--
-- Desenvolva abaixo:




-- ============================================================
-- FIM DOS EXERCÍCIOS
-- ============================================================
--
-- Antes de entregar:
--
-- 1. Execute cada SELECT.
-- 2. Verifique se a subquery retorna o tipo de resultado
--    esperado: um valor ou uma lista.
-- 3. Observe onde a subquery foi utilizada:
--       WHERE
--       SELECT
--       IN
--       NOT IN
-- 4. Confira os resultados.
--
-- ============================================================
