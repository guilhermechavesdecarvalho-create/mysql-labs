use techstore_escape;

/* LISTA DE FUNCIONARIOS: exibir todos os dados da tabela funcionarios */
select * from funcionarios;

/* DADOS DO CLIENTE: mostrar as colunas 'nome' e 'cidade' da tabela clientes */
select nome, cidade from clientes;

/*  ENCONTRANDO UM PRODUTO: encontrar o produto exatamente com o nome citado */
select * from produtos
where nome = 'notebook gamer';

/* PRODUTOS CAROS: listar produtos com preço estritamente maior que R$ 1000 */
select * from produtos 
where preco > '1000';

/* ESTOQUE BAIXO: listar produtos onde estoque é menor que 10 */
select * from produtos 
where estoque < '10';

/* FUNCIONÁRIOS DE TI: encontrar todos os funcionarios do setor de ti */
select * from funcionarios 
where setor = 'ti';

/* CLIENTES DE SANTA MARIA: encontrar os clientes da cidade 'SANTA MARIA' */
select * from clientes
where cidade = 'santa maria';

/* USUARIOS ADMINISTRADORES: encontrar usuarios cujo tipo seja administrador */
select * from usuarios
where login like '%admin%';

/* FUNCIONARIOS SUSPEITOS: listar funcionarios do setor 'TI' E com salario maior que R$ 4000 */
alter table funcionarios
add column salario int; 

select * from funcionarios
where setor = 'ti' and salario > '4000';

/* ACESSO ALTERNATIVO: listar funcionarios pertencentes ao setor 'TI' OU  ao setor 'Administrativo' */
select * from funcionarios
where setor = 'TI' or setor = 'Administracao';

/* O NOME MISTERISO: descobrir os clientes cujo nome começa com 'Jo' */
select nome from clientes
where nome like 'jo%';

/* CATEGORIAS ESPECIAIS: listar os produtos das categorias citadas (sem ultilizar múltiplos OR) */
select * from produtos 
where categoria in ('informatica', 'perifericos');

/* PRODUTOS EM PROMOÇÃO: filtrar produtos com preço entre 500 e 2000 reais sem ultilizar os operadores >= ou <= */
select * from produtos 
where preco between '500' and '2000';

/* INVESTIGAÇÃO FINAL: escreva as consultas para identificar registros sem telefone e com telefone */
select * from funcionarios
where telefone is null;

select * from funcionarios 
where telefone is not null;

/* RELATORIO EXECUTIVO: filtrar, ordenar e limitar o resultado */
use biblioteca_exercicio7;

select * from livro
where categoria = 'tecnologia' and ano >= '2020'
order by ano desc 
limit 2 ;
