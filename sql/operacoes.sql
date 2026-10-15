-- Exemplos de manipulação de dados (MySQL 8+)
USE adote_um_amigo;

-- 1. CONSULTA: listar animais disponíveis
SELECT id, nome, especie, idade_aproximada, porte, cidade
FROM animais
WHERE status_adocao = 'Disponível'
ORDER BY nome;

-- 2. CONSULTA COM RELACIONAMENTO: solicitações e nomes relacionados
SELECT s.id AS solicitacao_id, a.nome AS animal, d.nome AS adotante,
       s.data_solicitacao, s.status_solicitacao
FROM solicitacoes_adocao s
JOIN animais a ON a.id = s.animal_id
JOIN adotantes d ON d.id = s.adotante_id;

-- 3. INSERÇÃO: incluir um novo animal
INSERT INTO animais (nome, especie, idade_aproximada, porte, personalidade)
VALUES ('Bidu', 'Cão', '1 ano', 'Pequeno', 'Amigável');

-- 4. ATUALIZAÇÃO: atualizar o status de um animal (ajuste o ID se necessário)
UPDATE animais
SET status_adocao = 'Em processo'
WHERE id = 1;

-- 5. REMOÇÃO: exemplo seguro usando uma condição específica.
-- Execute apenas se desejar remover o registro de demonstração identificado pelo nome.
DELETE FROM animais
WHERE id = 1
  AND nome = 'Bidu'
  AND especie = 'Cão';

-- 6. RESTRIÇÃO: não é permitido excluir um animal vinculado a uma solicitação,
-- devido à chave estrangeira com ON DELETE RESTRICT.
