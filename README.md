# 🗄️ MySQL Labs

Bem-vindo ao **MySQL Labs**! Este repositório centraliza estudos práticos, modelagens de banco de dados, scripts SQL e laboratórios focados em diferentes cenários de negócios utilizando o MySQL.

O objetivo principal deste espaço é aplicar na prática conceitos de estruturação de dados, consultas (`SELECT`, `JOINs`, agregações), restrições, normalização e regras de negócio aplicadas a sistemas reais.

---

## 📂 Estrutura do Repositório

O projeto está dividido em subdiretórios, cada um representando um laboratório ou sistema específico:

### 1. 🛒 [01-TechStore](./01-TechStore)
* **Objetivo:** Simular o banco de dados de um e-commerce ou loja de tecnologia (`TechStore`).
* **Principais Funcionalidades / Escopo:** 
  * Gestão de produtos, categorias e estoque.
  * Controle de clientes e histórico de pedidos/vendas.
  * Consultas analíticas e relatórios básicos de desempenho de vendas.

### 2. 🐾 [02-PetCare](./02-PetCare)
* **Objetivo:** Desenvolver a infraestrutura de dados para uma clínica veterinária ou pet shop (`PetCare`).
* **Principais Funcionalidades / Escopo:**
  * Cadastro de tutores e animais de estimação (pets).
  * Agendamento de consultas, serviços e controle de prontuários/atendimentos.
  * Gestão de profissionais veterinários e insumos.

    ### 3. 📚 [03-Livraria](./03-Livraria)
* **Objetivo:** Modelar o ecossistema de dados para uma livraria ou sistema de gerenciamento de biblioteca (`BookStore`).
* **Principais Funcionalidades / Escopo:**
  * Cadastro de livros, autores, editoras e categorias/gêneros literários.
  * Gestão de clientes e controle de vendas, empréstimos ou histórico de aquisições.
  * Consultas complexas para livros mais vendidos, estoque por editora e relatórios de faturamento.

---

## 🚀 Como Executar os Projetos

Para rodar os scripts e testar os laboratórios localmente, siga os passos abaixo:

1. **Pré-requisitos:**
   * Tenha o [MySQL Server](https://dev.mysql.com/downloads/) instalado e em execução.
   * Utilize uma ferramenta de gerenciamento de banco de dados de sua preferência (ex: *MySQL Workbench*, *DBeaver*, *DataGrip* ou CLI do MySQL).

2. **Clone o repositório:**
   ```bash
   git clone [https://github.com/guilhermechavesdecarvalho-create/mysql-labs.git](https://github.com/guilhermechavesdecarvalho-create/mysql-labs.git)

   ```
   ---
   # 🤝 Como Contribuir

Contribuições são sempre muito bem-vindas! Se você tem sugestões de melhorias, novas consultas (`queries`), otimizações ou novos módulos para os laboratórios, siga o fluxo abaixo:

1. Faça um **Fork** do projeto.
2. Crie uma nova Branch para a sua funcionalidade ou correção:
   ```bash
   git checkout -b feature/MinhaNovaFeature
   ```
3. Faça o **Commit** das suas alterações:
   ```bash
   git commit -m "Adiciona nova consulta de relatório em TechStore"
   ```
4. Faça o **Push** para a sua Branch:
   ```bash
   git push origin feature/MinhaNovaFeature
   ```
5. Abra um **Pull Request** explicando detalhadamente o que foi alterado/adicionado.
   
   *Desenvolvido por Guilherme Carvalho – Estudante de TDS no Senac.*
