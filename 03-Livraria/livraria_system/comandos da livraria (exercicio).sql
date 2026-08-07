/* EXERCICIOS DA LIVRARIA ( COMANDOS E ENUNCIADO) */

/* EXERCICIO 1 - Escreva um comando UPDATE que aumente em 10% o preço de todos os livros que pertencem à categoria de id = 3 (dica: preco = preco * 1.10). */

UPDATE livro 
SET preco = preco * 1.10 
WHERE id_categoria = 3;

/* EXERCICIO 2 - Escreva um único comando INSERT INTO capaz de cadastrar de uma só vez três novos clientes (leitores) com seus respectivos nomes e telefones. */

INSERT INTO cliente (nome, telefone) VALUES 
('Ana Silva', '(11) 99999-1111'),
('Carlos Santos', '(11) 99999-2222'),
('Beatriz Lima', '(11) 99999-3333');
    
/* EXERCICIO 3 - Escreva um comando DELETE para remover do banco todos os livros do estoque que estão com quantidade zerada (estoque = 0) E que não possuem nenhuma venda/item registrado. */

DELETE FROM livro 
WHERE estoque = 0 AND id NOT IN (SELECT id_livro FROM itens_do_pedido);

/* EXERCICIO 4 - Escreva um comando UPDATE para alterar simultaneamente o nome e o telefone de contato da editora de id = 2 para "Companhia das Letras" e "0800-999-8888". */

UPDATE editora SET nome = 'Companhia das Letras', telefone = '0800-999-8888' 
WHERE id = 2;

/* EXERCICIO 5 - Exiba o título e o preço de todos os livros que custam entre R$ 50,00 e R$ 200,00, ordenando o resultado do livro mais caro para o mais barato (DESC). */

SELECT titulo, preco FROM livro 
WHERE preco BETWEEN 50.00 AND 200.00 
ORDER BY preco DESC;

/* EXERCICIO 6 - Escreva uma consulta que mostre o nome de cada categoria (gênero literário) e a quantidade total de livros cadastrados em cada uma delas (dica: utilize INNER JOIN entre categoria e livro junto com GROUP BY). */

SELECT c.nome AS nome_categoria, COUNT(l.id) AS total_de_livros FROM categoria c
INNER JOIN livro l ON c.id = l.id_categoria
GROUP BY c.nome;

/* EXERCICIO 7 - Crie um relatório que exiba o ID do cliente e o valor total gasto por ele somando todas as suas compras, mas mostre apenas os clientes que já gastaram um valor total acumulado superior a R$ 500,00 (dica: SUM, GROUP BY e HAVING). */

SELECT id_cliente, SUM(valor_total) AS valor_total_gasto FROM pedido
GROUP BY id_cliente
HAVING SUM(valor_total) > 500.00;

/* EXERCICIO 8 - Liste o nome e o e-mail de todas as editoras (fornecedores) que fornecem o livro com o título "O Senhor dos Anéis" (sem usar JOIN no comando principal, utilizando uma subconsulta com IN ou WHERE id IN (...)). */

SELECT nome, email FROM editora 
WHERE id IN (
    SELECT id_editora 
    FROM livro 
    WHERE titulo = 'O Senhor dos Anéis'
    );
    
/* EXERCICIO 9 - Escreva uma consulta que retorne:

​Nome do Cliente

​Data do Pedido

​Título do Livro

​Quantidade Comprada

​Subtotal do Item

(Dica: será necessário realizar a junção das tabelas cliente, pedido, itens_do_pedido e livro). */

SELECT 
    c.nome AS "Nome do Cliente",
    p.data_pedido AS "Data do Pedido",
    l.titulo AS "Título do Livro",
    i.quantidade AS "Quantidade Comprada",
    (i.quantidade * i.preco_unitario) AS "Subtotal do Item"
FROM cliente c
INNER JOIN pedido p ON c.id = p.id_cliente
INNER JOIN itens_do_pedido i ON p.id = i.id_pedido
INNER JOIN livro l ON i.id_livro = l.id;

/* EXERCICIO 10 - Escreva uma consulta que retorne o título do livro e o preço do item mais caro cadastrado na livraria, sem digitar o valor fixo na consulta (dica: utilize WHERE preco = (SELECT MAX(preco) FROM livro)). */

SELECT titulo, preco FROM livro 
WHERE preco = (SELECT MAX(preco) FROM livro);