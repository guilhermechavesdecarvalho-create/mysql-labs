-- Criação e seleção do Banco de Dados
CREATE DATABASE IF NOT EXISTS petcare_db;
USE petcare_db;

-- 1. Tabela de Clientes (Tutores)
CREATE TABLE clientes (
    id_cliente int primary key not null auto_increment,
    nome VARCHAR(150) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100) unique,
    cidade VARCHAR(100)
);

-- 2. Tabela de Pets (Vinculada ao cliente via FK)
CREATE TABLE pets (
    id_pet INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raca VARCHAR(50),
    idade INT,
    FOREIGN KEY(id_cliente) REFERENCES clientes(id_cliente)
);

-- 3. Tabela de Veterinários
CREATE TABLE veterinarios (
    id_veterinario INT PRIMARY KEY NOT NULL AUTO_INCREMENT ,
    nome VARCHAR(150) NOT NULL,
    especialidade VARCHAR(100),
    crmv VARCHAR(20) NOT NULL UNIQUE,
    salario DECIMAL(10,2)
);

-- 4. Tabela de Produtos (Loja Pet Shop)
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY NOT NULL AUTO_INCREMENT ,
    nome VARCHAR(150) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

-- 5. Tabela de Atendimentos (Histórico de Consultas/Serviços)
CREATE TABLE atendimentos (
    id_atendimento INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_pet INT NOT NULL,
    id_veterinario INT NOT NULL,
    data_atendimento DATETIME NOT NULL,
    descricao_servico TEXT,
    valor DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES pets(id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES veterinarios (id_veterinario)
);

---------------------------------------------------------
-- INSERÇÃO DE DADOS (SEED)
---------------------------------------------------------

-- Inserindo Clientes
INSERT INTO clientes (nome, telefone, email, cidade) VALUES 
('Carlos Silva', '(55) 99887-1122', 'carlos.silva@email.com', 'Santa Maria'),
('Ana Paula Souza', NULL, 'anapaula@email.com', 'Santa Maria'),
('Mariana Oliveira', '(51) 98111-2233', 'mari.oli@email.com', 'Porto Alegre'),
('Roberto Santos', '(55) 99123-4455', 'roberto.santos@email.com', 'Santa Maria');

-- Inserindo Pets
INSERT INTO pets (nome, especie, raca, idade, id_cliente) VALUES 
('Thor', 'Cachorro', 'Golden Retriever', 3, 1),
('Mel', 'Gato', 'Siamês', 2, 2),
('Bolt', 'Cachorro', 'Pastor Alemão', 5, 1),
('Nina', 'Cachorro', 'Poodle', 8, 3),
('Luna', 'Gato', 'Persa', 1, 4);

-- Inserindo Veterinários
INSERT INTO veterinarios (nome, especialidade, crmv, salario) VALUES 
('Dra. Fernanda Lima', 'Cirurgia', 'CRMV-RS 5432', 6500.00),
('Dr. Lucas Mendes', 'Clínica Geral', 'CRMV-RS 7891', 4800.00),
('Dra. Beatriz Souza', 'Dermatologia', 'CRMV-RS 1234', 5200.00);

-- Inserindo Produtos
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES 
('Ração Premium Cães 15kg', 'Racao', 189.90, 12),
('Ração Gatos Castrados 10kg', 'Racao', 145.00, 4),
('Brinquedo Mordedor Osso', 'Brinquedos', 35.50, 25),
('Arranhador para Gatos', 'Brinquedos', 120.00, 3),
('Shampoo Antipulgas 500ml', 'Higiene', 49.90, 15),
('Coleira Ajustável', 'Acessorios', 29.90, 8);

-- Inserindo Atendimentos
INSERT INTO atendimentos (id_pet, id_veterinario, data_atendimento, descricao_servico, valor) VALUES 
(1, 1, '2026-06-10 14:30:00', 'Cirurgia de castração preventiva', 350.00),
(2, 2, '2026-06-12 09:15:00', 'Consulta de rotina e vacinação', 150.00),
(3, 3, '2026-06-15 11:00:00', 'Tratamento dermatológico para alergia', 180.00),
(4, 2, '2026-06-20 16:45:00', 'Consulta geriátrica', 120.00),
(5, 1, '2026-06-22 10:00:00', 'Exame de emergência', 220.00);

