<?php
require_once __DIR__ . '/init.php';
// Propridade dos usuários que vão realizar o cadastro no site
$nome = "";
$email = "";
$senha = "";
$data_nascimento = "";
$telefone = "";
$cidade = "";
$estado = "";
$cadastro = "";

$msg = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nome = is_string($_POST['nome'] ?? null) ? trim($_POST['nome']) : null;
    $email = is_string($_POST['email'] ?? null) ? trim($_POST['email']) : null;
    $senha = is_string($_POST['senha'] ?? null) ? trim($_POST['senha']) : null;
    $data_nascimento = is_string($_POST['data_nascimento'] ?? null) ? trim($_POST['data_nascimento']) : null;
    $telefone = is_string($_POST['telefone'] ?? null) ? trim($_POST['telefone']) : null;
    $cidade = is_string($_POST['cidade'] ?? null) ? trim($_POST['cidade']) : null;
    $estado = is_string($_POST['estado'] ?? null) ? trim($_POST['estado']) : null;
    print_r($_POST);
    if (
        $nome == '' || strlen($nome) >= 200
        // || 
        // $email == '' || strlen($email) >= 200 ||
        // $senha == '' || strlen($senha) >= 10 ||
        // $data_nascimento == '' || strlen($data_nascimento) ||
        // $telefone == '' || strlen($telefone) >= 200 ||
        // $cidade == '' || strlen($cidade) >= 200 ||
        // $estado == '' || strlen($estado) >= 200 
    ) {
        $msg = "Por favor, preencha todos os campos obrigatórios corretamente.";
    } else {
        try {

            $novoUsuario = create($pdo, 'usuarios', [
                'nome' => $nome,
                'email' => $email,
                'senha' => $senha,
                'data_nascimento' => $data_nascimento,
                'telefone' => $telefone,
                'cidade' => $cidade,
                'estado' => $estado
            ]);
            header('Location: index.php');
        } catch (Throwable $exception) {
            print_r($exception);
            $msg = "Banco de dados indisponível.";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetConnect - Cadastro</title>
    <link rel="stylesheet" href="cadastro.css">
</head>

<body>

    <!-- Cabeçalho -->
    <header>
        <div class="logo">
            <!-- Substitua pelo caminho real do logo -->
            <img src="./IMG/PetConnect (1).png" alt="Cabeçalho">
        </div>

        <div class="header-center">
            <div class="search-bar">
                <input type="text" placeholder="para o seu pet, procure aqui">
                <span class="search-icon">🔍</span>
            </div>
            <nav>
                <ul>
                    <li><a href="#">Quero Adotar</a></li>
                    <li><a href="#">Quero Divulgar</a></li>
                    <li><a href="#">Nossos Produtos</a></li>
                    <li><a href="#">PetConnect</a></li>
                </ul>
            </nav>
        </div>

        <div class="header-icons">
            <span class="icon">🤍</span>
            <span class="icon">🛒</span>
        </div>
    </header>

    <div class="breadcrumb">
        <strong>Home</strong> / <strong>Cadastro</strong>
    </div>

    <main class="main-content">

        <section class="banner-section">
            <div class="banner-content">
                <!-- Imagem ilustrativa com os pets -->
                <img src="./IMG/Captura de tela 2026-10-30 105920.png" alt="Animais" class="banner-img">

            </div>
        </section>

        <!-- Formulário Direito -->
        <section class="form-section">
            <h2>Faça seu Cadastro</h2>
            <p><?= $msg ?></p>
            <form action="" method="POST">
                <div class="input-group full-width">
                    <label for="nome">Nome: </label>
                    <input type="text" id="nome" name="nome" placeholder="Nome completo" required>
                </div>

                <div class="input-group full-width">
                    <label for="email">E-mail</label>
                    <input type="email" id="email" name="email" placeholder="examplo@email.com">
                </div>

                <div class="input-group full-width">
                    <label for="confirma-email">Confirmação do E-mail*</label>
                    <input type="email" id="confirma-email" name="confirma-email" placeholder="Confirme seu e-mail">
                </div>

                <div class="input-group full-width">
                    <label for="telefone">Telefone</label>
                    <input type="text" id="telefone" name="telefone" placeholder="(XX) XXXXX-XXXX">
                </div>

                <div class="row">
                    <div class="input-group half-width">
                        <label for="cidade">Cidade</label>
                        <input type="text" id="cidade" name="cidade" placeholder="Digite sua cidade">
                    </div>
                    <div class="input-group half-width">
                        <label for="estado">Estado</label>
                        <input type="text" id="estado" name="estado" placeholder="Digite seu estado">
                    </div>
                </div>
                <div class="input-group half-width">
                    <label for="data-nascimento">Data de Nascimento</label>
                    <input type="date" id="data-nascimento" name="data_nascimento" placeholder="Ponha sua data de nascimento">
                </div>
                </div>

                <div class="row">
                    <div class="input-group half-width">
                        <label for="senha">Senha</label>
                        <input type="password" id="senha" name="senha" placeholder="Crie uma senha">
                    </div>
                    <div class="input-group half-width">
                        <label for="confirma-senha">Confirmação de Senha*</label>
                        <input type="password" id="confirma-senha" name="confirma-senha" placeholder="Confirme sua senha">
                    </div>
                </div>

                <div class="login-prompt">
                    Você já tem uma conta? <a href="#">Fazer Login</a>
                </div>

                <button type="submit" class="submit-btn">Cadastrar</button>
            </form>
        </section>
    </main>
    <!-- ==================== RODAPÉ / FOOTER ==================== -->
    <footer class="rodape-principal">
        <div class="container-rodape">
            <!-- Logo do Rodapé -->
            <div class="coluna-logo-rodape">
                <img src="./IMG/PetConnect (1).png" alt="PetConnect Logo">
            </div>

            <!-- Coluna Quero Adotar -->
            <div class="coluna-rodape">
                <h4 class="titulo-coluna-rodape">Quero Adotar</h4>
                <ul>
                    <li><a href="#">Cães</a></li>
                    <li><a href="#">Gatos</a></li>
                </ul>
            </div>

            <!-- Coluna Produtos -->
            <div class="coluna-rodape">
                <h4 class="titulo-coluna-rodape">Produtos</h4>
                <ul>
                    <li><a href="#">Cães</a></li>
                    <li><a href="#">Gatos</a></li>
                </ul>
            </div>

            <!-- Coluna Institucional -->
            <div class="coluna-rodape">
                <h4 class="titulo-coluna-rodape">Institucional</h4>
                <ul>
                    <li><a href="#">PetConnect</a></li>
                </ul>
            </div>

            <!-- Coluna Atendimento -->
            <div class="coluna-rodape">
                <h4 class="titulo-coluna-rodape">Atendimento</h4>
                <ul>
                    <li><a href="#">Meu Perfil</a></li>
                    <li><a href="#">Segurança e Privacidade</a></li>
                </ul>
            </div>

            <!-- Coluna Redes Sociais -->
            <div class="coluna-rodape">
                <h4 class="titulo-coluna-rodape">Redes Sociais</h4>
                <div class="icones-redes-sociais">

                </div>
            </div>
        </div>
    </footer>

</body>

</html>