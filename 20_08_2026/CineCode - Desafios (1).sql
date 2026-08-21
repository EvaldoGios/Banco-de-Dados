-- =============================================================================
-- ATIVIDADE PRÁTICA: CONSULTAS E ATUALIZAÇÕES EM SQL
-- ALUNO: Edimilson
-- DATA: 20/08/26
--
-- INSTRUÇÕES:
-- Abaixo de cada comentário, escreva o comando SQL necessário para resolver
-- o problema proposto. O foco é a utilização correta de filtros (WHERE),
-- ordenação (ORDER BY), limites (LIMIT) e atualizações (UPDATE).
-- =============================================================================

-- -----------------------------------------------------------------------------
-- BLOCO 01: CONSULTAS BÁSICAS E ORDENAÇÃO (ORDER BY)
-- -----------------------------------------------------------------------------

-- 1. Selecione todos os filmes cadastrados, mostrando apenas o título e o gênero.
-- Ordene o resultado pelo título em ordem alfabética (A-Z).
select titulo, genero from filmes order by titulo asc;


-- 2. Liste o nome e a data de nascimento de todos os clientes.
-- Ordene do mais jovem para o mais velho (Dica: Order by data_nascimento DESC).
select nome_cliente, data_nascimento from clientes order by data_nascimento desc;


-- 3. Exiba todos os dados dos atores, ordenados pelo nome de forma descendente (Z-A).
select * from atores order by nome_ator desc;


-- -----------------------------------------------------------------------------
-- BLOCO 02: FILTRAGEM DE DADOS (WHERE)
-- -----------------------------------------------------------------------------

-- 4. Precisamos de um relatório apenas dos filmes do gênero 'Drama'.
-- Mostre o título e o ano de lançamento.
select titulo, ano_lancamento from filmes
where genero = 'Drama';

-- 5. Liste todos os clientes que moram no estado de 'São Paulo'.
select * from clientes 
where estado = 'São Paulo';

-- 6. Selecione todos os filmes que foram lançados no ano de 2010 ou depois.
select * from filmes
where ano_lancamento >= 2010;

-- 7. Liste apenas os filmes que têm duração maior que 120 minutos (2 horas).
-- Exiba título e duração.
select titulo, duracao from filmes
where duracao > 120;


-- -----------------------------------------------------------------------------
-- BLOCO 03: COMBINANDO OPERADORES (AND / OR)
-- -----------------------------------------------------------------------------

-- 8. Selecione os clientes que moram na região 'Sudeste' E que sejam do sexo 'feminino'.
select * from clientes
where regiao = 'Sudeste' and sexo = 'Feminino';


-- 9. Precisamos listar os filmes de 'Mistério e Suspense' OU 'Ficção e Fantasia'.
select * from filmes
where genero = 'Mistério e Suspense' or genero = 'Ficção e Fantasia';


-- -----------------------------------------------------------------------------
-- BLOCO 04: LIMITANDO RESULTADOS (LIMIT)
-- -----------------------------------------------------------------------------

-- 10. Quais são os 5 filmes com o maior preço de aluguel?
-- Exiba título e preço, ordenando do mais caro para o mais barato.
select titulo, preco_aluguel from filmes order by preco_aluguel desc limit 5;


-- 11. Mostre os 10 primeiros clientes cadastrados na tabela (considere a data_criacao mais antiga).
select * from clientes order by data_conta limit 10;


-- -----------------------------------------------------------------------------
-- BLOCO 05: MANIPULAÇÃO E ATUALIZAÇÃO DE DADOS (UPDATE)
-- -----------------------------------------------------------------------------

-- 12. O filme "Rio 2" (ID 71) está com o preço desatualizado.
-- Atualize o preço de aluguel dele para 3.50.
update filmes
set preco_aluguel = 3.50
where id_filme = 71;

-- 13. O cliente "Ian Almeida" (ID 109) mudou-se para 'São Paulo' (atualmente está no Rio de Janeiro).
-- Atualize o estado e a região dele no banco de dados.
update clientes
set estado = 'São Paulo'
where id_cliente = 109;

select * from clientes where id_cliente = 109;

-- 14. Todos os filmes do gênero 'Comédia' lançados em 2001 ganharam um desconto.
-- Atualize o preço de aluguel desses filmes especificamente para 1.50.
update filmes
set preco_aluguel = 1.50
where genero = 'Comédia' and ano_lancamento = 2001;

-- =============================================================================
-- BLOCO 06: CAÇA AOS ERROS (DEBUGGING)
-- INSTRUÇÕES: 
-- As consultas abaixo contêm erros intencionais (sintaxe, lógica ou nomes errados).
-- O banco de dados retornará um erro ou não trará o resultado esperado.
-- Identifique o erro, explique-o brevemente e reescreva a consulta da forma correta.
-- =============================================================================

-- 16. O aluno tentou filtrar os filmes lançados após 2005, mas o SQL deu erro.
-- Consulta Errada:
SELECT titulo, genero, ano_lancamento FROM filmes WHERE ano_lancamento 2005 ORDER BY titulo;

-- Qual é o erro? Faltou o sinal '>'
-- Correção:
SELECT titulo, genero, ano_lancamento FROM filmes WHERE ano_lancamento > 2005 ORDER BY titulo;


-- 17. O objetivo era selecionar os clientes da região Sul, mas o comando não retorna nada.
-- Consulta Errada:
SELECT nome_cliente, estado FROM clientes WHERE estado = 'Sul';

-- Qual é o erro? Pq está filtrando pelo estado e não pela região
-- Correção:
SELECT nome_cliente, regiao FROM clientes WHERE regiao = 'Sul';


-- 18. Tentativa de buscar aluguéis que ainda não foram avaliados (nota está vazia).
-- O comando roda, mas não retorna nada, mesmo sabendo que existem nulos.
-- Consulta Errada:
SELECT * FROM alugueis WHERE nota = 'NULL';

select * from alugueis;

-- Qual é o erro? A palavra null esta entre aspas simples, o correto seria "nota is NULL"
-- Correção:
SELECT * FROM alugueis WHERE nota IS NULL;


-- 19. O aluno tentou listar os atores, mas deu erro.
-- Consulta Errada:
SELECT nome_ator, nacionalidade FROM actor;

-- Qual é o erro? A palavra "atores" está escrito errado
-- Correção:
SELECT nome_ator, nacionalidade FROM atores;



-- 20. (PERIGO!) O estagiário tentou atualizar o gênero do filme 'Harry Potter' para 'Fantasia'.
-- O comando abaixo contém um erro gravíssimo. Corrija antes que o pior aconteça
-- Consulta Perigosa:
UPDATE filmes SET genero = 'Fantasia';

select * from filmes;

-- Qual é o erro? Se esse comando for executado, TODOS OS GENEROS DE CADA FILME SERAM ATUALIZADOS PARA "Fantasia"
-- Correção
UPDATE filmes 
SET genero = 'Fantasia'
WHERE titulo like 'harry Potter%';
-- -----------------------------------------------------------------------------
-- DESAFIO EXTRA (Para quem terminar antes)
-- -----------------------------------------------------------------------------

-- 15. Selecione a nota média dada aos filmes nos aluguéis (tabela alugueis), 
-- mas considere apenas os aluguéis que possuem nota (nota não é nula).
-- Dica: Use a função AVG() e IS NOT NULL.S

select round(avg(nota), 2) as media_nota from alugueis;

