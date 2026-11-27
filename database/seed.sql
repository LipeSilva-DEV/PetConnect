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
(10, 'Joao Pereira', 'joao.pereira@email.com', '012345678', '1991-12-22', '81999991010', 'Recife', 'PE'),
(11, 'Felipe', 'felipe.pereira@email.com', '012345678', '1991-12-22', '81999991010', 'São Paulo', 'SP');

-- =========================================
-- 2. TABELA: ANIMAIS
-- =========================================

INSERT INTO animais
(id_usuario, nome_animal, especie, idade, sexo, porte, cidade, estado, raca,
 situacao_animal, cuidados_veterinarios, temperamento,
 sociabilidade, vivencia, status_animal, url_imagem)
VALUES 
(1, 'Thor', 'CACHORRO', 3, 'MACHO', 'GRANDE',
 'Sao Paulo', 'SP', 'Labrador',
 'Resgatado de uma situacao de abandono. Atualmente esta em um abrigo aguardando uma familia.',
 'Vacinado, vermifugado e castrado. Possui acompanhamento veterinario regular.',
 'Brincalhao, carinhoso, inteligente e bastante ativo.',
 'Convive bem com pessoas e outros cachorros.',
 'Acostumado a passeios diarios e ambientes com bastante espaco.',
 'DISPONIVEL',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/IMG/Tuf%C3%A3o.png'),

(2, 'Mimi', 'GATO', 2, 'FEMEA', 'PEQUENO',
 'Curitiba', 'PR', 'Siames',
 'Encontrada na rua e acolhida por uma ONG de protecao animal.',
 'Vacinada, vermifugada e com exames de rotina realizados.',
 'Tranquila, independente e bastante carinhosa.',
 'Convive bem com adultos e outros gatos.',
 'Acostumada a viver dentro de casa e utilizar caixa de areia.',
 'DISPONIVEL',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/IMG/Didi.png'),

(3, 'Bob', 'CACHORRO', 1, 'MACHO', 'MEDIO',
 'Rio de Janeiro', 'RJ', 'SRD',
 'Filhote resgatado junto com seus irmaos. Procura um lar definitivo.',
 'Possui vacinacao inicial e acompanhamento veterinario.',
 'Energetico, curioso e muito brincalhao.',
 'Gosta de pessoas, criancas e outros animais.',
 'Acostumado a ambientes familiares e atividades recreativas.',
 'DISPONIVEL',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/IMG/Rabanero.png'),

(4, 'Luna', 'GATO', 4, 'FEMEA', 'PEQUENO',
 'Belo Horizonte', 'MG', 'Persa',
 'Entregue para adocao apos sua antiga familia mudar de residencia.',
 'Vacinada, castrada e com acompanhamento veterinario em dia.',
 'Calma, delicada e afetuosa.',
 'Convive bem com pessoas e prefere ambientes tranquilos.',
 'Acostumada a morar em apartamentos e ambientes internos.',
 'EM_PROCESSO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/IMG/Mantov%C3%A3o.png'),

(5, 'Max', 'CACHORRO', 5, 'MACHO', 'GRANDE',
 'Porto Alegre', 'RS', 'Pastor Alemao',
 'Resgatado por voluntarios e encaminhado para uma instituicao de acolhimento.',
 'Vacinado, castrado e vermifugado. Necessita de consultas periodicas.',
 'Protetor, inteligente, obediente e atento.',
 'Pode conviver com outros animais mediante adaptacao.',
 'Acostumado a passeios, treinamentos e ambientes externos.',
 'DISPONIVEL',
 'https://example.com/imagens/max.jpg'),

(7, 'Mel', 'CACHORRO', 6, 'FEMEA', 'PEQUENO',
 'Salvador', 'BA', 'Poodle',
 'Disponibilizada para adocao apos o falecimento de seu antigo tutor.',
 'Vacinada, castrada e com exames veterinarios atualizados.',
 'Docil, tranquila e muito companheira.',
 'Convive bem com criancas, adultos e outros animais.',
 'Acostumada a morar em casa e permanecer em ambientes internos.',
 'ADOTADO',
 'https://example.com/imagens/mel.jpg'),

(8, 'Nina', 'GATO', 1, 'FEMEA', 'PEQUENO',
 'Florianopolis', 'SC', 'Maine Coon',
 'Encontrada em uma residencia abandonada e acolhida por voluntarios.',
 'Vacinada, vermifugada e com acompanhamento veterinario.',
 'Curiosa, carinhosa e bastante brincalhona.',
 'Apresenta boa convivencia com outros gatos.',
 'Acostumada a ambientes internos e brinquedos interativos.',
 'DISPONIVEL',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/gato2.png'),

(9, 'Pingo', 'OUTRO', 2, 'MACHO', 'PEQUENO',
 'Recife', 'PE', 'Coelho Mini Lop',
 'Resgatado de uma criacao inadequada e encaminhado para adocao responsavel.',
 'Acompanhamento veterinario especializado e alimentacao adequada.',
 'Calmo, curioso e sociavel.',
 'Aceita contato humano gradual e ambientes tranquilos.',
 'Acostumado a viver em espaco protegido e adaptado para coelhos.',
 'DISPONIVEL',
 'https://example.com/imagens/pingo.jpg'),

(10, 'Rex', 'CACHORRO', 4, 'MACHO', 'MEDIO',
 'Goiania', 'GO', 'Golden Retriever',
 'Resgatado apos ficar perdido nas ruas. Foi acolhido por uma familia temporaria.',
 'Vacinado, vermifugado e castrado.',
 'Amigavel, obediente e muito brincalhao.',
 'Convive muito bem com criancas e outros cachorros.',
 'Acostumado a passeios, brincadeiras e convivio familiar.',
 'EM_PROCESSO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/cachorro3.png'),

(11, 'Amora', 'GATO', 3, 'FEMEA', 'PEQUENO',
 'Campinas', 'SP', 'SRD',
 'Resgatada ainda filhote e cuidada por voluntarios de uma ONG.',
 'Castrada, vacinada e com acompanhamento veterinario atualizado.',
 'Afetuosa, tranquila e independente.',
 'Convive bem com adultos e outros gatos.',
 'Acostumada a ambientes internos, arranhadores e caixa de areia.',
 'DISPONIVEL',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/gato4.png');

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
(nome, categoria, preco, estoque, especie_indicada, url_imagem)
VALUES

('Petisco para Gatos Sabor Salmao',
 'ALIMENTO', 18.90, 50, 'GATO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/PetCat%20-%20Salm%C3%A3o.png'),

('Petisco para Cachorros Sabor Frango',
 'ALIMENTO', 16.90, 60, 'CACHORRO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/Bifinho-%20Frango.png'),

('Petisco para Cachorros Sabor Carne',
 'ALIMENTO', 17.90, 45, 'CACHORRO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/Bifinho-Carne.png'),

('Petisco para Cachorros Original',
 'ALIMENTO', 14.90, 70, 'CACHORRO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/PetBiscoito.png'),

('Petisco para Gatos Sabor Frango',
 'ALIMENTO', 19.90, 40, 'GATO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/PetCat%20-%20Salm%C3%A3o.png'),

('Petisco para Gatos Sabor Carne',
 'ALIMENTO', 20.90, 35, 'GATO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/PetCat-Carne.png'),

('Cama para Gatos',
 'PRODUTO', 89.90, 20, 'GATO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/CamaCat.png'),

('Cama para Cachorros',
 'PRODUTO', 129.90, 25, 'CACHORRO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/CamaDog.png'),

('Coleira de Couro',
 'PRODUTO', 49.90, 30, 'CACHORRO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/Coleira%20couro.png'),

('Coleira Guizo',
 'PRODUTO', 24.90, 40, 'GATO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/ColeiraGuizo.png'),

('Bolsa de Transporte Cachorros',
 'PRODUTO', 159.90, 15, 'CACHORRO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/BolsaTransporte.png'),

('Bolsa de Transporte Gatos',
 'PRODUTO', 139.90, 18, 'GATO',
 'https://raw.githubusercontent.com/LipeSilva-DEV/PetConnect/main/app/img-lora/BolsaTransporteCat.png');


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