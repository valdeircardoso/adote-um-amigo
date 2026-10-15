-- Projeto Adote um Amigo - Módulo III
-- Banco relacional de exemplo compatível com MySQL 8+

CREATE DATABASE IF NOT EXISTS adote_um_amigo
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE adote_um_amigo;

CREATE TABLE IF NOT EXISTS animais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    especie ENUM('Cão', 'Gato') NOT NULL,
    idade_aproximada VARCHAR(40),
    porte ENUM('Pequeno', 'Médio', 'Grande', 'Não informado') DEFAULT 'Não informado',
    personalidade VARCHAR(255),
    cidade VARCHAR(100) NOT NULL DEFAULT 'Nova Alvorada do Sul - MS',
    status_adocao ENUM('Disponível', 'Em processo', 'Adotado') NOT NULL DEFAULT 'Disponível',
    data_cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS adotantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(30),
    cidade VARCHAR(100) NOT NULL,
    data_cadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS solicitacoes_adocao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    animal_id INT NOT NULL,
    adotante_id INT NOT NULL,
    data_solicitacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status_solicitacao ENUM('Pendente', 'Aprovada', 'Recusada', 'Cancelada') NOT NULL DEFAULT 'Pendente',
    observacoes VARCHAR(500),
    CONSTRAINT fk_solicitacao_animal FOREIGN KEY (animal_id)
      REFERENCES animais(id) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_solicitacao_adotante FOREIGN KEY (adotante_id)
      REFERENCES adotantes(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- Dados fictícios exclusivamente para demonstração acadêmica.
INSERT INTO animais (nome, especie, idade_aproximada, porte, personalidade)
VALUES
('Mel', 'Cão', '2 anos', 'Médio', 'Carinhosa e brincalhona'),
('Mingau', 'Gato', '1 ano', 'Pequeno', 'Tranquilo e curioso'),
('Thor', 'Cão', '3 anos', 'Grande', 'Companheiro e ativo'),
('Luna', 'Gato', '8 meses', 'Pequeno', 'Dócil e brincalhona'),
('Pipoca', 'Cão', '6 meses', 'Pequeno', 'Alegre e curiosa'),
('Nina', 'Gato', '2 anos', 'Pequeno', 'Calma e carinhosa');

INSERT INTO adotantes (nome, email, telefone, cidade)
VALUES ('Exemplo de Adotante', 'adotante.exemplo@email.com', '(67) 90000-0000', 'Nova Alvorada do Sul - MS');

-- Exemplo de solicitação; IDs correspondem aos registros inseridos acima.
INSERT INTO solicitacoes_adocao (animal_id, adotante_id, observacoes)
VALUES (1, 1, 'Registro fictício para demonstrar o relacionamento entre as tabelas.');
