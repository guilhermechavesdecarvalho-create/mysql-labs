# 📚 Livraria System - MySQL Database & Queries

Este repositório contém a modelagem relacional e os scripts SQL desenvolvidos para o sistema Livraria System, criado como parte das atividades práticas do curso de Técnico em Desenvolvimento de Sistemas (TDS) no Senac.

## 🎯 Objetivo do Projeto
O projeto simula o ecossistema de dados de uma livraria comercial, gerenciando informações de clientes (leitores), fornecedores (editoras), catálogo de produtos (livros e categorias) e o histórico operacional de pedidos e faturamento. O foco principal foi a aplicação prática de comandos DML (INSERT, UPDATE, DELETE), DQL (SELECT), funções de agregação, subconsultas e relacionamentos múltiplos (JOIN).

## 🗂️ Estrutura do Banco de Dados
O banco de dados da livraria é composto pelas seguintes tabelas principais:
- cliente: Cadastro dos leitores e compradores.
- editora: Gestão dos fornecedores de livros e seus respectivos contatos.
- categoria: Classificação dos gêneros literários do catálogo.
- livro: Catálogo principal contendo preços, estoque e vínculos com editoras e categorias via Chave Estrangeira (FOREIGN KEY).
- pedido e itens_do_pedido: Histórico de vendas detalhado, relacionando os clientes aos livros comprados, armazenando quantidades e gerando subtotais.

## 💻 Consultas SQL Desenvolvidas (queries.sql)
O script principal executa operações essenciais de recuperação e manipulação de dados, tais como:

1. Atualizações de Dados (UPDATE): Reajuste de preços em lote aplicando cálculos matemáticos (ex: aumento de 10% em categorias específicas) e alteração simultânea de contatos de fornecedores.
2. Inserção em Lote (INSERT): Cadastro de múltiplos clientes simultaneamente com um único comando.
3. Remoção Condicional (DELETE): Limpeza de catálogo removendo livros com estoque zerado e que não possuem histórico de vendas ativo.
4. Filtros por Intervalo e Ordenação: Projeção de livros dentro de faixas de preço específicas (BETWEEN) listados do mais caro para o mais barato (ORDER BY DESC).
5. Funções de Agregação e Agrupamento (GROUP BY): Geração de relatórios com a contagem total de livros cadastrados por gênero literário (COUNT).
6. Filtros Avançados em Agregações (HAVING): Mapeamento de clientes "premium" que possuem um valor total acumulado de compras superior a um limite estabelecido (ex: R$ 500,00).
7. Subconsultas (IN e Operadores Matemáticos):
   - Localização de dados de fornecedores baseados no título de um livro sem utilizar JOIN na consulta principal.
   - Identificação dinâmica do livro mais caro da loja combinando a cláusula WHERE com a função MAX().
8. Relatórios Completos com Múltiplos Relacionamentos (INNER JOIN): Construção de uma nota fiscal/recibo detalhado, unindo quatro tabelas para exibir nome do cliente, data, título do livro, quantidade e cálculo matemático de subtotal.

## 🚀 Como Executar
1. Certifique-se de ter o MySQL instalado em sua máquina.
2. Abra o seu gerenciador de banco de dados (MySQL Workbench, DBeaver, etc.).
3. Execute os scripts de criação das tabelas e os blocos INSERT de dados fornecidos no arquivo de estrutura do banco.
4. Execute o arquivo de consultas (queries.sql) para testar todas as manipulações e relatórios descritos.

---
*Desenvolvido por Guilherme Carvalho – Estudante de TDS no Senac.*
