/* LISTA DE EXERCÍCIOS - GROUP BY
   Foco: Agrupamento de dados com COUNT, AVG, SUM, MAX
*/

-- 1. Filmes por Ano: Quantos filmes foram lançados em cada ano?
	select ano_lancamento, count(*) as quantidade_filmes from filmes group by ano_lancamento;

-- 2. Duração Média por Gênero: Qual é a duração média (em minutos) dos filmes de cada gênero?
	select genero, round(avg(duracao), 2) as duracao_media from filmes  group by genero;

-- 3. Atores por Nacionalidade: Quantos atores e atrizes temos cadastrados de cada nacionalidade?
	select nacionalidade, count(*) as nacionalidades from atores group by nacionalidade;

-- 4. Clientes por Estado: Quantos clientes temos em cada Estado brasileiro?
	select estado, count(*) as estado from clientes group by estado;

-- 5. Receita Potencial por Gênero: Qual é a soma dos preços de aluguel de todos os filmes, agrupados por gênero?
	select preco_aluguel, count(*) as soma from filmes group by genero;

-- 6. Popularidade dos Filmes (Alugueis por Filme): Quantas vezes cada filme (pelo ID) foi alugado?
	select id_filme, count(*) as quantidade from alugueis group by id_filme; 

-- 7. Comportamento do Cliente (Média de Notas): Qual é a nota média que cada cliente (pelo ID) costuma dar para os filmes?
	select id_cliente, round(avg(nota), 2) as media_alugueis from alugueis group by id_cliente;

-- 8. Distribuição por Sexo (Atores): Quantos atores são do sexo masculino e quantos são do feminino?
	select sexo, count(*) as genero from atores group by sexo;

-- 9. Alugueis por Dia: Quantos alugueis foram realizados em cada data específica?
	select data_aluguel, count(*) as quantidade from alugueis group by data_aluguel;

-- 10. Maior Preço por Ano: Qual foi o filme mais caro (maior preço de aluguel) lançado em cada ano?
	select ano_lancamento, max(preco_aluguel) as preco_maximo from filmes group by ano_lancamento
	