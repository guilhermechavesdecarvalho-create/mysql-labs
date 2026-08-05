use petcare_db;

/* LISTA DE CLIENTES: exibir todos os dados da tabela clientes */
select * from clientes;

/* DADOS DOS PETS: mostrar as colunas 'nome' e 'especie' de todos os pets cadastrados */
select nome, especie from pets;

/* ENCONTRANDO UM PET: encontrar o pet exatamente com o nome citado */
select * from pets
where nome = 'Mel';

/* PRODUTOS CAROS: listar produtos com preço estritamente maior que R$ 100 */
select * from produtos 
where preco > 100.00;

/* ESTOQUE BAIXO: listar produtos onde o estoque é menor ou igual a 5 */
select * from produtos 
where estoque <= 5;

/* VETERINÁRIOS CIRURGIÕES: encontrar todos os veterinários da especialidade de cirurgia */
select * from veterinarios 
where especialidade = 'Cirurgia';

/* CLIENTES DE SANTA MARIA: encontrar os clientes da cidade 'Santa Maria' */
select * from clientes
where cidade = 'Santa Maria';

/* BUSCA DE PETS: encontrar pets cujos nomes começam com 'Th' */
select * from pets
where nome like 'Th%';

/* FUNCIONÁRIOS COM SALÁRIO ALTO: listar veterinários com salário maior que R$ 5000 */
select * from veterinarios
where salario > 5000.00;

/* VETERINÁRIOS ESPECÍFICOS: listar veterinários pertencentes às especialidades 'Cirurgia' OU 'Dermatologia' */
select * from veterinarios
where especialidade = 'Cirurgia' or especialidade = 'Dermatologia';

/* CATEGORIAS ESPECIAIS: listar os produtos das categorias citadas (sem utilizar múltiplos OR) */
select * from produtos 
where categoria in ('Racao', 'Brinquedos');

/* PRODUTOS EM PROMOÇÃO: filtrar produtos com preço entre 50 e 200 reais sem utilizar os operadores >= ou <= */
select * from produtos 
where preco between 50.00 and 200.00;

/* INVESTIGAÇÃO DE CONTATO: listar clientes sem telefone e com telefone cadastrado */
select * from clientes
where telefone is null;

select * from clientes 
where telefone is not null;

/* RELATÓRIO EXECUTIVO DE ATENDIMENTOS: filtrar, ordenar e limitar o resultado dos atendimentos mais caros */
select * from atendimentos
where valor >= 150.00
order by data_atendimento desc 
limit 3;