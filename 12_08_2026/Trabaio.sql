#Exercício 1
select * from clientes order by nome asc;

#Exercício 2
select * from clientes order by nome desc;

#Exercício 3
select nome, idade from clientes order by idade asc;

#Exercício 4
select nome, idade from clientes order by idade desc;

#Exercício 5
select * from clientes limit 5;

#Exercício 6
select * from clientes order by idade desc limit 3;

#Exercício 7
select * from clientes order by idade desc limit 2;

#Exercício 8
select distinct cidade from clientes order by cidade asc;

#Exercício 9
select * from clientes order by nome asc limit 10;

#Exercício 10
select nome, cidade, idade from clientes where cidade = "Rio de Janeiro" order by idade desc limit 5;