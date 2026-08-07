# 🛒 TechStore Escape - MySQL Database & Queries

Este repositório contém a modelagem e os scripts SQL desenvolvidos para o banco de dados **TechStore Escape**, criado como parte das atividades práticas do curso de **Tecnico em Desenvolvimento de Sistemas (TDS)** no **Senac**.

## 🎯 Objetivo do Projeto
O projeto simula o ecossistema de dados de um ambiente corporativo/comercial fictício, estruturando tabelas relacionais para gerenciar funcionários, clientes, produtos, usuários, acessos e logs de alterações no sistema. O foco principal foi a aplicação prática de comandos DQL (`SELECT`) avançados, filtros lógicos, ordenação e restrições.

## 🗂️ Estrutura do Banco de Dados
O banco de dados `techstore_escape` é composto pelas seguintes tabelas principais:
- `funcionarios`: Cadastro da equipe, incluindo setores, salários e contatos.
- `clientes`: Informações de cadastro e localização dos clientes.
- `produtos`: Catálogo de itens, abrangendo preços, categorias e controle de estoque.
- `usuarios`: Gestão de acessos e perfis de login.
- `acessos` & `alteracoes_sistema`: Tabelas de suporte a logs e segurança.

## 💻 Consultas SQL Desenvolvidas (`queries.sql`)
O script principal executa diversas operações essenciais de recuperação e manipulação de dados, tais como:

1. **Consultas Básicas:** Exibição geral de registros de funcionários e projeção de colunas específicas (`nome` e `cidade`) de clientes.
2. **Filtros por Condição Exata:** Busca por produtos específicos (ex: 'notebook gamer') e restrições numéricas (`WHERE preco > 1000` e `estoque < 10`).
3. **Filtros por Texto e Padrões (`LIKE` e `IN`):** 
   - Localização de usuários administradores com `LIKE '%admin%'`.
   - Busca por clientes cujos nomes começam com "Jo" (`LIKE 'jo%'`).
   - Filtragem de categorias múltiplas utilizando o operador `IN`.
4. **Operadores Lógicos (`AND` / `OR`):** Cruzamento de critérios por setor de TI, salários e departamentos alternativos.
5. **Manipulação de Estrutura e Dados (`ALTER TABLE`):** Adição dinâmica de colunas (como o campo `salario` na tabela de funcionários) para refinamento de consultas complexas.
6. **Filtros por Intervalo (`BETWEEN`):** Seleção de produtos em faixa de preço específica sem o uso de operadores relacionais tradicionais (`>=` / `<=`).
7. **Tratamento de Valores Nulos (`IS NULL` / `IS NOT NULL`):** Auditoria de registros de funcionários com ou sem telefone cadastrado.
8. **Relatórios Avançados:** Consultas combinando filtros estritos, ordenação decrescente (`ORDER BY DESC`) e limitação de resultados (`LIMIT`).

## 🚀 Como Executar
1. Certifique-se de ter o MySQL instalado.
2. Abra o seu gerenciador de banco de dados (MySQL Workbench, DBeaver, etc.).
3. Execute os scripts de criação das tabelas correspondentes à estrutura do *TechStore Escape*.
4. Execute o arquivo de consultas (`queries.sql`) para testar os filtros e relatórios descritos.

---
*Desenvolvido por Guilherme Carvalho – Estudante de TDS no Senac.*
