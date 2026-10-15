# Adote um Amigo — Projeto acadêmico

Protótipo de aplicação web responsiva para divulgação de cães e gatos disponíveis para adoção. Projeto elaborado para apoiar a atividade do Módulo II de Desenvolvimento Web com frameworks e HTML/CSS.

## Tecnologias utilizadas
- HTML5 semântico: estrutura e conteúdo.
- CSS3: personalização visual e ajustes para telas menores.
- JavaScript: busca por nome, filtro por espécie e janela modal com detalhes.
- Bootstrap 5.3: grid responsivo, navegação, botões, formulários e modal.

## Como executar
1. Baixe ou extraia os arquivos do projeto.
2. Abra `index.html` em um navegador atualizado.
3. Para carregar o Bootstrap, mantenha conexão com a internet.

## Funcionalidades implementadas
- Listagem de seis perfis demonstrativos de animais.
- Busca por nome.
- Filtro por espécie (cães/gatos).
- Janela de detalhes para cada animal.
- Mensagem quando nenhum perfil corresponde aos filtros.
- Menu adaptável para telas menores.

## Estrutura de pastas
```text
adocao_animais/
├── index.html
├── README.md
├── css/
│   └── style.css
└── js/
    └── script.js
```

## Importante
Os perfis e informações são fictícios e servem apenas para demonstração acadêmica. Antes de usar o site publicamente, substitua-os por informações e contatos reais com autorização dos responsáveis. Este protótipo não possui banco de dados nem cadastro online.

## Publicação no GitHub
Crie um repositório público no GitHub e envie os arquivos desta pasta. Depois, atualize este README com o link do repositório e, se ativar o GitHub Pages, com o endereço do site publicado.


## Módulo III — Banco de Dados e Controle de Versão

### Banco de dados

Foi desenvolvido um modelo de banco de dados relacional para o projeto Adote um Amigo, utilizando MySQL. O banco organiza as informações dos animais disponíveis para adoção, dos adotantes e das solicitações de adoção.

### Estrutura do banco

O banco de dados `adote_um_amigo` possui três tabelas principais:

- **animais:** armazena nome, espécie, idade aproximada, porte, personalidade, cidade e status de adoção.
- **adotantes:** armazena informações dos interessados em adotar.
- **solicitacoes_adocao:** registra as solicitações e relaciona os animais aos adotantes.

### Operações SQL

Os arquivos SQL estão disponíveis na pasta `sql`:

- `schema.sql`: criação do banco de dados e das tabelas.
- `operacoes.sql`: exemplos de consultas, inserção, atualização e exclusão de dados.

### Tecnologias utilizadas

- MySQL 8+
- MySQL Workbench
- SQL
- Git e GitHub para controle de versão e publicação do código.

### Repositório do projeto

https://github.com/valdeircardoso/adote-um-amigo

### Aplicação web publicada

https://valdeircardoso.github.io/adote-um-amigo/
