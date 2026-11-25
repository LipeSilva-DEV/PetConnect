-- seed
USE PetConnect;

-- =========================================
-- 1. TABELA: USUARIOS
-- =========================================

INSERT INTO usuarios
(id_usuario, nome, email, senha, data_nascimento, telefone, cidade, estado)
VALUES
(1, 'Ana Souza', 'ana.souza@email.com', '012345678', '1996-02-14', '41999991001', 'Curitiba', 'PR'),
(2, 'Bruno Lima', 'bruno.lima@email.com', '012345678', '1994-05-20', '48999991002', 'Florianopolis', 'SC'),
(3, 'Carla Mendes', 'carla.mendes@email.com', '012345678', '1998-08-11', '51999991003', 'Porto Alegre', 'RS'),
(4, 'Diego Alves', 'diego.alves@email.com', '012345678', '1995-03-25', '19999991004', 'Campinas', 'SP'),
(5, 'Elisa Rocha', 'elisa.rocha@email.com', '012345678', '1997-11-09', '21999991005', 'Rio de Janeiro', 'RJ'),
(6, 'Fabio Costa', 'fabio.costa@email.com', '012345678', '1993-07-16', '31999991006', 'Belo Horizonte', 'MG'),
(7, 'Gabriela Nunes', 'gabriela.nunes@email.com', '012345678', '1999-01-30', '27999991007', 'Vitoria', 'ES'),
(8, 'Hugo Martins', 'hugo.martins@email.com', '012345678', '1992-09-05', '62999991008', 'Goiania', 'GO'),
(9, 'Isabela Freitas', 'isabela.freitas@email.com', '012345678', '2000-04-18', '71999991009', 'Salvador', 'BA'),
(10, 'Joao Pereira', 'joao.pereira@email.com', '012345678', '1991-12-22', '81999991010', 'Recife', 'PE');


-- =========================================
-- 2. TABELA: ANIMAIS
-- =========================================

INSERT INTO animais
(nome_animal, especie, idade, sexo, porte, cidade, estado, raca,
 situacao_animal, cuidados_veterinarios, temperamento,
 sociabilidade, vivencia, status_animal, url_imagem)
VALUES 
('Thor', 'CACHORRO', 3, 'MACHO', 'GRANDE',
 'Sao Paulo', 'SP', 'Labrador',
 'Resgatado de uma situacao de abandono. Atualmente esta em um abrigo aguardando uma familia.',
 'Vacinado, vermifugado e castrado. Possui acompanhamento veterinario regular.',
 'Brincalhao, carinhoso, inteligente e bastante ativo.',
 'Convive bem com pessoas e outros cachorros.',
 'Acostumado a passeios diarios e ambientes com bastante espaco.',
 'DISPONIVEL',
 'https://example.com/imagens/thor.jpg'),

('Mimi', 'GATO', 2, 'FEMEA', 'PEQUENO',
 'Curitiba', 'PR', 'Siames',
 'Encontrada na rua e acolhida por uma ONG de protecao animal.',
 'Vacinada, vermifugada e com exames de rotina realizados.',
 'Tranquila, independente e bastante carinhosa.',
 'Convive bem com adultos e outros gatos.',
 'Acostumada a viver dentro de casa e utilizar caixa de areia.',
 'DISPONIVEL',
 'https://example.com/imagens/mimi.jpg'),

('Bob', 'CACHORRO', 1, 'MACHO', 'MEDIO',
 'Rio de Janeiro', 'RJ', 'SRD',
 'Filhote resgatado junto com seus irmaos. Procura um lar definitivo.',
 'Possui vacinacao inicial e acompanhamento veterinario.',
 'Energetico, curioso e muito brincalhao.',
 'Gosta de pessoas, criancas e outros animais.',
 'Acostumado a ambientes familiares e atividades recreativas.',
 'DISPONIVEL',
 'https://example.com/imagens/bob.jpg'),

('Luna', 'GATO', 4, 'FEMEA', 'PEQUENO',
 'Belo Horizonte', 'MG', 'Persa',
 'Entregue para adocao apos sua antiga familia mudar de residencia.',
 'Vacinada, castrada e com acompanhamento veterinario em dia.',
 'Calma, delicada e afetuosa.',
 'Convive bem com pessoas e prefere ambientes tranquilos.',
 'Acostumada a morar em apartamentos e ambientes internos.',
 'EM_PROCESSO',
 'https://example.com/imagens/luna.jpg'),

('Max', 'CACHORRO', 5, 'MACHO', 'GRANDE',
 'Porto Alegre', 'RS', 'Pastor Alemao',
 'Resgatado por voluntarios e encaminhado para uma instituicao de acolhimento.',
 'Vacinado, castrado e vermifugado. Necessita de consultas periodicas.',
 'Protetor, inteligente, obediente e atento.',
 'Pode conviver com outros animais mediante adaptacao.',
 'Acostumado a passeios, treinamentos e ambientes externos.',
 'DISPONIVEL',
 'https://example.com/imagens/max.jpg'),

('Mel', 'CACHORRO', 6, 'FEMEA', 'PEQUENO',
 'Salvador', 'BA', 'Poodle',
 'Disponibilizada para adocao apos o falecimento de seu antigo tutor.',
 'Vacinada, castrada e com exames veterinarios atualizados.',
 'Docil, tranquila e muito companheira.',
 'Convive bem com criancas, adultos e outros animais.',
 'Acostumada a morar em casa e permanecer em ambientes internos.',
 'ADOTADO',
 'https://example.com/imagens/mel.jpg'),

('Nina', 'GATO', 1, 'FEMEA', 'PEQUENO',
 'Florianopolis', 'SC', 'Maine Coon',
 'Encontrada em uma residencia abandonada e acolhida por voluntarios.',
 'Vacinada, vermifugada e com acompanhamento veterinario.',
 'Curiosa, carinhosa e bastante brincalhona.',
 'Apresenta boa convivencia com outros gatos.',
 'Acostumada a ambientes internos e brinquedos interativos.',
 'DISPONIVEL',
 'https://example.com/imagens/nina.jpg'),

('Pingo', 'OUTRO', 2, 'MACHO', 'PEQUENO',
 'Recife', 'PE', 'Coelho Mini Lop',
 'Resgatado de uma criacao inadequada e encaminhado para adocao responsavel.',
 'Acompanhamento veterinario especializado e alimentacao adequada.',
 'Calmo, curioso e sociavel.',
 'Aceita contato humano gradual e ambientes tranquilos.',
 'Acostumado a viver em espaco protegido e adaptado para coelhos.',
 'DISPONIVEL',
 'https://example.com/imagens/pingo.jpg'),

('Rex', 'CACHORRO', 4, 'MACHO', 'MEDIO',
 'Goiania', 'GO', 'Golden Retriever',
 'Resgatado apos ficar perdido nas ruas. Foi acolhido por uma familia temporaria.',
 'Vacinado, vermifugado e castrado.',
 'Amigavel, obediente e muito brincalhao.',
 'Convive muito bem com criancas e outros cachorros.',
 'Acostumado a passeios, brincadeiras e convivio familiar.',
 'EM_PROCESSO',
 'https://example.com/imagens/rex.jpg'),

('Amora', 'GATO', 3, 'FEMEA', 'PEQUENO',
 'Campinas', 'SP', 'SRD',
 'Resgatada ainda filhote e cuidada por voluntarios de uma ONG.',
 'Castrada, vacinada e com acompanhamento veterinario atualizado.',
 'Afetuosa, tranquila e independente.',
 'Convive bem com adultos e outros gatos.',
 'Acostumada a ambientes internos, arranhadores e caixa de areia.',
 'DISPONIVEL',
 'https://example.com/imagens/amora.jpg');

-- =========================================
-- 3. TABELA: SOLICITACOES_ADOCAO
-- =========================================

INSERT INTO solicitacoes_adocao
(id_solicitacao, id_usuario, id_animal, status, observacoes)
VALUES
(1, 1, 1, 'RECUSADO', 'Solicitacao nao aprovada pela equipe responsavel.'),
(2, 2, 2, 'EM_ANALISE', 'Aguardando avaliacao do perfil do interessado.'),
(3, 3, 3, 'APROVADO', 'Adocao aprovada e finalizada com sucesso.'),
(4, 4, 4, 'CANCELADA', 'Usuario decidiu cancelar a solicitacao.'),
(5, 5, 5, 'EM_ANALISE', 'Documentacao enviada e aguardando verificacao.'),
(6, 6, 6, 'APROVADO', 'Adocao aprovada apos entrevista.'),
(7, 7, 7, 'RECUSADO', 'Perfil nao atendeu aos criterios de adocao.'),
(8, 8, 8, 'EM_ANALISE', 'Aguardando contato da equipe de adocao.'),
(9, 9, 9, 'APROVADO', 'Processo de adocao está concluido.'),
(10, 10, 10, 'CANCELADA', 'Solicitacao cancelada pelo usuario.');


-- =========================================
-- 4. TABELA: FAVORITOS
-- =========================================

INSERT INTO favoritos
(id_usuario, id_animal)
VALUES
(1, 2),
(2, 1),
(3, 4),
(4, 5),
(5, 7),
(6, 8),
(7, 10),
(8, 1),
(9, 2),
(10, 4);


-- =========================================
-- 5. TABELA: PRODUTOS
-- =========================================

INSERT INTO produtos
(id_produto, nome, categoria, preco, estoque, especie_indicada)
VALUES
(1, 'Guia Ajustavel', 'UTILITARIO', 39.90, 50, 'CACHORRO'),
(2, 'Cama Pet', 'UTILITARIO', 129.90, 20, 'TODOS'),
(3, 'Bola Interativa', 'BRINQUEDO', 19.90, 100, 'CACHORRO'),
(4, 'Petisco Natural', 'PETISCO', 14.50, 80, 'TODOS'),
(5, 'Caixa Transporte', 'UTILITARIO', 89.90, 15, 'GATO'),
(6, 'Arranhador', 'BRINQUEDO', 119.90, 25, 'GATO'),
(7, 'Comedouro', 'UTILITARIO', 29.90, 60, 'TODOS'),
(8, 'Corda Mordedora', 'BRINQUEDO', 24.90, 45, 'CACHORRO'),
(9, 'Shampoo Neutro', 'UTILITARIO', 32.00, 35, 'TODOS'),
(10, 'Racao Umida', 'PETISCO', 8.90, 120, 'GATO');


-- =========================================
-- 6. TABELA: PEDIDOS
-- =========================================

INSERT INTO pedidos
(id_pedido, id_usuario, valor_total, status)
VALUES
(1, 1, 39.90, 'PAGO'),
(2, 2, 129.90, 'ENVIADO'),
(3, 3, 39.80, 'ENTREGUE'),
(4, 4, 29.00, 'CANCELADO'),
(5, 5, 119.80, 'PAGO'),
(6, 6, 119.90, 'ENVIADO'),
(7, 7, 49.80, 'ENTREGUE'),
(8, 8, 46.50, 'PAGO'),
(9, 9, 44.50, 'AGUARDANDO_PAGAMENTO'),
(10, 10, 59.80, 'PAGO');


-- =========================================
-- 7. TABELA: ITENS_PEDIDOS
-- =========================================

INSERT INTO itens_pedidos
(id_itens, id_pedido, id_produto, quantidade)
VALUES
(1, 1, 1, 1),

(2, 2, 2, 1),

(3, 3, 3, 2),

(4, 4, 4, 2),

(5, 5, 5, 1),
(6, 5, 7, 1),

(7, 6, 6, 1),

(8, 7, 8, 2),

(9, 8, 9, 1),
(10, 8, 4, 1),

(11, 9, 10, 5),

(12, 10, 1, 1),
(13, 10, 3, 1);