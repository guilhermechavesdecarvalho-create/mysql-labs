# 🐾 PetCare System - MySQL Database & Queries

Este repositório contém a modelagem relacional e os scripts SQL desenvolvidos para o sistema **PetCare**, criado como parte das atividades práticas do curso de **Técnico em Desenvolvimento de Sistemas (TDS)** no **Senac**.

## 🎯 Objetivo do Projeto
O projeto simula o ecossistema de dados de uma clínica veterinária e pet shop, gerenciando informações de tutores (clientes), animais de estimação (pets), corpo clínico (veterinários), catálogo de produtos e o histórico operacional de atendimentos e consultas. O foco principal foi a aplicação prática de comandos DQL (`SELECT`), filtros lógicos, funções de agregação, ordenação e restrições relacionais.

## 🗂️ Estrutura do Banco de Dados
O banco de dados `petcare_db` é composto pelas seguintes tabelas principais:
- `clientes`: Cadastro dos tutores (contatos e localização).
- `pets`: Registro dos animais, vinculados aos seus respectivos donos via Chave Estrangeira (`FOREIGN KEY`).
- `veterinarios`: Gestão da equipe médica, especialidades, CRMVs e remuneração.
- `produtos`: Catálogo de itens do pet shop (preços, categorias e estoque).
- `atendimentos`: Histórico de consultas e procedimentos realizados vinculando pets e veterinários.

## 💻 Consultas SQL Desenvolvidas (`queries.sql`)
O script principal executa operações essenciais de recuperação e manipulação de dados, tais como:

1. **Consultas Básicas:** Exibição geral de registros de clientes e projeção de colunas específicas (`nome` e `especie`) de pets.
2. **Filtros por Condição Exata:** Busca por pets específicos (ex: 'Mel') e restrições numéricas de preço e estoque crítico (`preco > 100` e `estoque <= 5`).
3. **Filtros por Texto e Padrões (`LIKE` e `IN`):** 
   - Localização de pets com padrões no nome (`LIKE 'Th%'`).
   - Filtragem de categorias múltiplas utilizando o operador `IN` ('Racao', 'Brinquedos').
4. **Operadores Lógicos (`AND` / `OR`):** Cruzamento de critérios por especialidades médicas e faixas salariais.
5. **Filtros por Intervalo (`BETWEEN`):** Seleção de produtos em faixa de preço específica sem o uso de operadores relacionais tradicionais.
6. **Tratamento de Valores Nulos (`IS NULL` / `IS NOT NULL`):** Auditoria de cadastros de clientes com ou sem telefone preenchido.
7. **Relatórios Avançados:** Consultas combinando filtros de valor, ordenação decrescente (`ORDER BY DESC`) e limitação de resultados (`LIMIT`).

## 🚀 Como Executar
1. Certifique-se de ter o MySQL instalado em sua máquina.
2. Abra o seu gerenciador de banco de dados (MySQL Workbench, DBeaver, etc.).
3. Execute os scripts de criação das tabelas e os blocos `INSERT` de dados fornecidos no arquivo de estrutura do banco.
4. Execute o arquivo de consultas (`queries.sql`) para testar todos os filtros e relatórios descritos.

---
*Desenvolvido por Guilherme Carvalho – Estudante de TDS no Senac.*
