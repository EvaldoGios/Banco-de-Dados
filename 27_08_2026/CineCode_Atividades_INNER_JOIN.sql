-- ============================================================
-- ATIVIDADE PRÁTICA - INNER JOIN
-- Banco de dados: CineCode_gabarito
-- ============================================================
--
-- OBJETIVO:
-- Praticar consultas utilizando apenas INNER JOIN, começando
-- por relacionamentos simples e avançando para filtros,
-- ordenação e funções de agregação.
--
-- As atividades abaixo foram elaboradas com base nos dados
-- existentes no banco CineCode_gabarito.
--
-- TABELAS PRINCIPAIS:
--   filmes
--   atores
--   clientes
--   atuacoes
--   alugueis
--
-- RELACIONAMENTOS:
--
--   filmes <---- atuacoes ----> atores
--
--   clientes <---- alugueis ----> filmes
--
-- Escreva cada consulta no espaço abaixo do enunciado.
-- ============================================================

USE CineCode_gabarito;


-- ============================================================
-- PARTE 1 - INNER JOIN BÁSICO
-- ============================================================


-- ------------------------------------------------------------
-- ATIVIDADE 1 - CLIENTES E ALUGUÉIS
-- ------------------------------------------------------------
-- Exiba o nome dos clientes que realizaram aluguéis,
-- juntamente com a data de cada aluguel.
--
-- Utilize:
--   clientes
--   alugueis
--   INNER JOIN
--
-- Exiba:
--   - nome do cliente;
--   - data do aluguel.

	select c.nome_cliente, a.data_aluguel from clientes as c
    inner join alugueis as a on c.id_cliente = a.id_cliente;

-- ------------------------------------------------------------
-- ATIVIDADE 2 - FILMES ALUGADOS
-- ------------------------------------------------------------
-- Exiba o título dos filmes que foram alugados e a data
-- em que cada aluguel ocorreu.
--
-- Utilize:
--   filmes
--   alugueis
--   INNER JOIN
--
-- Exiba:
--   - título do filme;
--   - data do aluguel.
	
    select f.titulo, a.data_aluguel from filmes as f
    inner join alugueis as a on f.id_filme = a.id_filme;
    
-- ------------------------------------------------------------
-- ATIVIDADE 3 - CLIENTE + FILME
-- ------------------------------------------------------------
-- Mostre qual cliente alugou cada filme.
--
-- Será necessário relacionar três tabelas:
--   clientes
--   alugueis
--   filmes
--
-- Exiba:
--   - nome do cliente;
--   - título do filme;
--   - data do aluguel.

	select c.nome_cliente, f.titulo, a.data_aluguel from alugueis as a
    inner join filmes as f on f.id_filme = a.id_filme
    inner join clientes as c on c.id_cliente = a.id_cliente;
-- ------------------------------------------------------------
-- ATIVIDADE 4 - FILMES E ATORES
-- ------------------------------------------------------------
-- Liste os filmes juntamente com os atores cadastrados
-- em cada um deles.
--
-- Será necessário utilizar:
--   filmes
--   atuacoes
--   atores
--
-- Exiba:
--   - título do filme;
--   - nome do ator.

	select f.titulo, a.nome_ator from filmes as f
    inner join atores as a on a.id_ator = f.id_ator;

-- ============================================================
-- PARTE 2 - INNER JOIN COM FILTROS
-- ============================================================


-- ------------------------------------------------------------
-- ATIVIDADE 5 - FILMES DO GÊNERO DRAMA
-- ------------------------------------------------------------
-- Liste os clientes que alugaram filmes do gênero "Drama".
--
-- Exiba:
--   - nome do cliente;
--   - título do filme;
--   - gênero;
--   - data do aluguel.
--
-- Utilize:
--   INNER JOIN
--   WHERE

	select c.nome_cliente, f.titulo, f.genero, a.data_aluguel from alugueis as a
    inner join filmes as f on f.id_filme = a.id_filme
    inner join clientes as c on c.id_cliente = a.id_cliente
    where f.genero = 'Drama';

-- ------------------------------------------------------------
-- ATIVIDADE 6 - ATORES DOS ESTADOS UNIDOS
-- ------------------------------------------------------------
-- Liste os filmes que possuem atores de nacionalidade "EUA".
--
-- Exiba:
--   - título do filme;
--   - nome do ator;
--   - nacionalidade.
--
-- Utilize:
--   INNER JOIN
--   WHERE

	select f.titulo, a.nome_ator, a.nacionalidade from filmes as f
    inner join atores as a
    where a.nacionalidade = 'EUA';

-- ------------------------------------------------------------
-- ATIVIDADE 7 - FILMES LANÇADOS A PARTIR DE 2010
-- ------------------------------------------------------------
-- Liste os atores que participaram de filmes lançados
-- a partir de 2010.
--
-- Exiba:
--   - nome do ator;
--   - título do filme;
--   - ano de lançamento.
--
-- Utilize:
--   INNER JOIN
--   WHERE
--   ORDER BY
--
-- Ordene do filme mais recente para o mais antigo.

	select a.nome_ator, f.titulo, f.ano_lancamento from atores as a
    inner join filmes as f
    where f.ano_lancamento > 2010
    order by f.ano_lancamento;

-- ------------------------------------------------------------
-- ATIVIDADE 8 - ALUGUÉIS AVALIADOS
-- ------------------------------------------------------------
-- Liste somente os aluguéis que receberam uma nota.
--
-- Exiba:
--   - nome do cliente;
--   - título do filme;
--   - nota;
--   - data do aluguel.
--
-- Utilize:
--   clientes
--   alugueis
--   filmes
--   INNER JOIN
--   WHERE
--
-- A nota não pode ser NULL.

	select c.nome_cliente, f.titulo, a.nota, a.data_aluguel from alugueis as a
    inner join filmes as f on f.id_filme = a.id_filme
    inner join clientes as c on c.id_cliente = a.id_cliente
    where a.nota is not null;

-- ------------------------------------------------------------
-- ATIVIDADE 9 - ALUGUÉIS COM NOTA 10
-- ------------------------------------------------------------
-- Mostre os clientes que deram nota 10 para algum filme.
--
-- Exiba:
--   - nome do cliente;
--   - título do filme;
--   - nota.
--
-- Utilize:
--   INNER JOIN
--   WHERE

	select c.nome_cliente, f.titulo, a.nota from alugueis as a
    inner join filmes as f on a.id_filme = f.id_filme
    inner join clientes as c on a.id_cliente = c.id_cliente
    where a.nota = 10;

-- ------------------------------------------------------------
-- ATIVIDADE 10 - ALUGUÉIS REALIZADOS EM 2019
-- ------------------------------------------------------------
-- Liste os aluguéis realizados durante o ano de 2019.
--
-- Exiba:
--   - nome do cliente;
--   - título do filme;
--   - data do aluguel.
--
-- Utilize:
--   INNER JOIN
--   WHERE
--   YEAR()

	select c.nome_cliente, f.titulo, a.data_aluguel from alugueis as a
    inner join filmes as f on a.id_filme = f.id_filme
    inner join clientes as c on a.id_cliente = c.id_cliente 
    where year(a.data_aluguel) = 2019;

-- ------------------------------------------------------------
-- ATIVIDADE 11 - CLIENTES DA REGIÃO SUDESTE
-- ------------------------------------------------------------
-- Liste os aluguéis realizados por clientes da região
-- "Sudeste".
--
-- Exiba:
--   - nome do cliente;
--   - região;
--   - título do filme;
--   - data do aluguel.
--
-- Utilize:
--   INNER JOIN
--   WHERE

	select c.nome_cliente, c.regiao, f.titulo, a.data_aluguel from alugueis as a
    inner join clientes as c on c.id_cliente = a.id_cliente
    inner join filmes as f on f.id_filme = a.id_filme
    where c.regiao = 'Sudeste';

-- ------------------------------------------------------------
-- ATIVIDADE 12 - FICÇÃO E FANTASIA
-- ------------------------------------------------------------
-- Liste os aluguéis de filmes pertencentes ao gênero
-- "Ficção e Fantasia".
--
-- Exiba:
--   - nome do cliente;
--   - título do filme;
--   - gênero;
--   - data do aluguel.
--
-- Utilize:
--   INNER JOIN
--   WHERE

	select c.nome_cliente, f.titulo, f.genero, a.data_aluguel from alugueis as a
    inner join clientes as c on c.id_cliente = a.id_cliente
    inner join filmes as f on f.id_filme = a.id_filme
    where f.genero = 'Ficção e Fantasia';
    

-- ============================================================
-- PARTE 3 - INNER JOIN COM AGREGAÇÕES
-- ============================================================


-- ------------------------------------------------------------
-- ATIVIDADE 13 - QUANTIDADE DE ALUGUÉIS POR CLIENTE
-- ------------------------------------------------------------
-- Conte quantos aluguéis foram realizados por cada cliente
-- que possui pelo menos um aluguel.
--
-- Exiba:
--   - nome do cliente;
--   - quantidade de aluguéis.
--
-- Utilize:
--   INNER JOIN
--   COUNT()
--   GROUP BY
--   ORDER BY
--
-- Ordene do cliente que realizou mais aluguéis para o que
-- realizou menos.

	select c.nome_cliente, count(a.data_aluguel) as qtd_alugueis from alugueis as a
    inner join clientes as c on c.id_cliente = a.id_cliente
    group by c.nome_cliente
    order by qtd_alugueis desc;

-- ------------------------------------------------------------
-- ATIVIDADE 14 - QUANTIDADE DE ALUGUÉIS POR FILME
-- ------------------------------------------------------------
-- Conte quantas vezes cada filme que já foi alugado aparece
-- na tabela de aluguéis.
--
-- Exiba:
--   - título do filme;
--   - quantidade de aluguéis.
--
-- Utilize:
--   INNER JOIN
--   COUNT()
--   GROUP BY
--   ORDER BY
--
-- Ordene do filme mais alugado para o menos alugado.

	select f.titulo, count(a.data_aluguel) as qtd_aluguel from alugueis as a
    inner join filmes as f on f.id_filme = a.id_filme
    group by f.titulo
    order by qtd_aluguel desc;

-- ------------------------------------------------------------
-- ATIVIDADE 15 - MÉDIA DAS NOTAS POR FILME
-- ------------------------------------------------------------
-- Calcule a média das notas recebidas pelos filmes que
-- possuem avaliações.
--
-- Exiba:
--   - título do filme;
--   - média das notas.
--
-- Utilize:
--   INNER JOIN
--   AVG()
--   ROUND()
--   WHERE
--   GROUP BY
--
-- Considere somente registros em que a nota esteja preenchida.

	select f.titulo, round(avg(a.nota), 2) as media from alugueis as a
    inner join filmes as f on f.id_filme = a.id_filme
    where a.nota is not null
    group by f.titulo;

-- ------------------------------------------------------------
-- ATIVIDADE 16 - QUANTIDADE DE ATORES POR FILME
-- ------------------------------------------------------------
-- Conte quantos atores estão cadastrados para cada filme
-- que possui atores relacionados na tabela atuacoes.
--
-- Exiba:
--   - título do filme;
--   - quantidade de atores.
--
-- Utilize:
--   INNER JOIN
--   COUNT()
--   GROUP BY
    
    SELECT f.titulo, COUNT(a.id_ator) AS qtd_atores FROM filmes AS f
	INNER JOIN atuacoes AS at ON f.id_filme = at.id_filme
	INNER JOIN atores AS a ON a.id_ator = at.id_ator
	GROUP BY f.titulo;

-- ------------------------------------------------------------
-- ATIVIDADE 17 - ALUGUÉIS POR REGIÃO
-- ------------------------------------------------------------
-- Conte quantos aluguéis foram realizados por clientes de
-- cada região do Brasil.
--
-- Exiba:
--   - região;
--   - quantidade de aluguéis.
--
-- Utilize:
--   clientes
--   alugueis
--   INNER JOIN
--   COUNT()
--   GROUP BY
--   ORDER BY
--
-- Ordene da região com mais aluguéis para a região com menos.

	select c.regiao, count(a.data_aluguel) as qtd_aluguel from clientes as c
    inner join alugueis as a on a.id_cliente = c.id_cliente
    group by c.regiao
    order by qtd_aluguel desc;

-- ------------------------------------------------------------
-- ATIVIDADE 18 - FATURAMENTO POR FILME
-- ------------------------------------------------------------
-- Calcule quanto cada filme alugado gerou em receita.
--
-- Considere que cada aluguel gera o valor armazenado no
-- campo preco_aluguel da tabela filmes.
--
-- Exiba:
--   - título do filme;
--   - quantidade de vezes alugado;
--   - valor total gerado.
--
-- Utilize:
--   INNER JOIN
--   COUNT()
--   SUM()
--   GROUP BY
--   ORDER BY
--
-- Ordene do maior faturamento para o menor.

	select f.titulo, count(a.data_aluguel) as quatidade_alugado, sum(a.data_aluguel) as soma_aluguel from filmes as f
    inner join alugueis as a on a.id_filme = f.id_filme
    group by f.titulo
    order by soma_aluguel desc;

-- ------------------------------------------------------------
-- ATIVIDADE 19 - MÉDIA DAS AVALIAÇÕES POR GÊNERO
-- ------------------------------------------------------------
-- Calcule a média das notas recebidas pelos filmes de cada
-- gênero.
--
-- Considere somente aluguéis que possuem nota preenchida.
--
-- Exiba:
--   - gênero;
--   - quantidade de avaliações;
--   - média das notas.
--
-- Utilize:
--   INNER JOIN
--   COUNT()
--   AVG()
--   ROUND()
--   WHERE
--   GROUP BY

	select f.genero, count(a.nota) as contagem_nota, round(avg(a.nota), 2) as media_nota from filmes as f
    inner join alugueis as a on a.id_filme = f.id_filme
    where a.nota is not null
    group by f.genero;

-- ------------------------------------------------------------
-- ATIVIDADE 20 - QUANTIDADE DE ALUGUÉIS POR GÊNERO
-- ------------------------------------------------------------
-- Conte quantos aluguéis foram realizados para cada gênero
-- de filme.
--
-- Exiba:
--   - gênero;
--   - quantidade de aluguéis.
--
-- Utilize:
--   filmes
--   alugueis
--   INNER JOIN
--   COUNT()
--   GROUP BY
--   ORDER BY
--
-- Ordene do gênero mais alugado para o menos alugado.

	select f.genero, count(data_aluguel) as qtd_aluguel from filmes as f
    inner join alugueis as a on f.id_filme = a.id_filme
    group by f.genero
    order by qtd_aluguel desc;

-- ============================================================
-- FIM DA ATIVIDADE
-- ============================================================
