create database pobre_flix;
use pobre_flix;

create table midias (
	id_midia INT primary key auto_increment,
    titulo VARCHAR(100),
    genero VARCHAR(50),
    ano_lancamento INT,
    tipo VARCHAR(10)
);

-- Consultas (SELECT): Agora, explore o catálogo. Escreva e execute os comandos SQL para
-- responder às seguintes perguntas:

	select titulo, ano_lancamento from midias order by ano_lancamento desc;

	select * from midias where ano_lancamento like '1994';

	select * from midias where tipo = 'Filme' and genero like '%Ficção Científica%';

	select * from midias where tipo = 'Série' and genero like 'Crime, Drama';

	select * from midias where titulo like 'o Senhor dos%';

	select * from midias where ano_lancamento < 1990 order by ano_lancamento desc;

-- Atualização (UPDATE): A equipe de catálogo precisa de alguns ajustes. Execute as seguintes
-- atualizações:

	update midias set genero = 'Comédia, Sitcom' where id_midia = 34;

	update midias set genero = 'Animação, Musical' where id_midia = 17;

-- Exclusão (DELETE): A gerência decidiu fazer cortes no catálogo. Execute as seguintes
-- exclusões:

	set sql_safe_updates = 0;

	delete from midias where id_midia = 27;
    
    delete from midias where ano_lancamento < 1985;