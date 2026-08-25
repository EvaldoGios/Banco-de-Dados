-- EXERCÍCIO 1: filmes alugados mais de 5 vezes
select id_filme, data_aluguel, count(*) as total_alugueis from alugueis
group by data_aluguel
having total_alugueis > 5;

-- EXERCÍCIO 2: clientes que fizeram 3 ou mais alugueis
select id_cliente, data_aluguel, count(*) as total_alugueis
from alugueis
group by data_aluguel
having total_alugueis > 3;

-- EXERCÍCIO 3: gêneros com média de preço acima de 2.50
select genero, preco_aluguel, round(avg(preco_aluguel), 2) as media_preco 
from filmes
group by preco_aluguel
having media_preco > 2.50;

-- EXERCÍCIO 4: anos com mais de 4 filmes cadastrados
select ano_lancamento, count(*) as total_filmes from filmes
group by ano_lancamento
having total_filmes > 4;

-- EXERCÍCIO 5: atores que atuaram em mais de 1 filme
select id_ator, count(*) as numero_atuacoes from atuacoes
group by id_ator
having numero_atuacoes > 1;

-- EXERCÍCIO 6: estados com mais de 6 clientes
select estado, count(*) as total_clientes from clientes
group by estado
having total_clientes > 6;

-- EXERCÍCIO 7: filmes com média de nota maior que 8
select id_filme, nota, round(avg(nota), 2) as media_nota from alugueis
group by id_filme
having nota > 8;

-- EXERCÍCIO 8: clientes que alugaram 2+ filmes diferentes
select id_cliente, data_aluguel, count(*) as filmes_alugados from alugueis
group by data_aluguel
having filmes_alugados >= 2;

-- EXERCÍCIO 9: anos cuja soma de duração ultrapassa 500
select ano_lancamento, duracao, count(*) as duracao_maior_500 from filmes
group by ano_lancamento
having duracao_maior_500 > 500;

-- EXERCÍCIO 10: nacionalidades com mais de 8 atores
select nacionalidade, count(*) as qtd_atores from atores
group by nacionalidade
having qtd_atores > 8;
