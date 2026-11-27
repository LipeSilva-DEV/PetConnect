<?php
require_once __DIR__ . '/init.php'; 

$idUsuario = $_SESSION['id_usuario'] ?? $_SESSION['usuario_id'] ?? null;

if (empty($idUsuario)) {
    $_SESSION['redirect_apos_login'] = 'divulgacao.php';
    header('Location: login.php?aviso=login_necessario');
    exit;
} 

$nome = "";
$especie = "";
$idade = "";
$sexo = "";
$porte = "";
$estado = "";
$cidade = "";
$raca = "";
$situacao_animal = "";
$url_imagem = "";
$cuidados_veterinarios = "";
$temperamento = "";
$sociabilidade = "";
$vivencia = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nome = is_string($_POST['nome'] ?? null) ? trim($_POST['nome']) : null;
    $especie = is_string($_POST['especie'] ?? null) ? trim($_POST['especie']) : null;
    $idade = is_string($_POST['idade'] ?? null) ? trim($_POST['idade']) : null;
    $sexo = is_string($_POST['sexo'] ?? null) ? trim($_POST['sexo']) : null;
    $porte = is_string($_POST['porte'] ?? null) ? trim($_POST['porte']) : null;
    $estado = is_string($_POST['estado'] ?? null) ? trim($_POST['estado']) : null;
    $cidade = is_string($_POST['cidade'] ?? null) ? trim($_POST['cidade']) : null;
    $raca = is_string($_POST['raca'] ?? null) ? trim($_POST['raca']) : null;
    $situacao_animal = is_string($_POST['situacao_animal'] ?? null) ? trim($_POST['situacao_animal']) : null;
    $url_imagem = is_string($_POST['url_imagem'] ?? null) ? trim($_POST['url_imagem']) : null;
    $cuidados_veterinarios = is_string($_POST['cuidados_veterinarios'] ?? null) ? trim($_POST['cuidados_veterinarios']) : null;
    $temperamento = is_string($_POST['temperamento'] ?? null) ? trim($_POST['temperamento']) : null;
    $sociabilidade = is_string($_POST['sociabilidade'] ?? null) ? trim($_POST['sociabilidade']) : null;
    $vivencia = is_string($_POST['vivencia'] ?? null) ? trim($_POST['vivencia']) : null;
    if (
        $nome == '' || strlen($nome) >= 200 || 
         $especie == '' || strlen($especie) >= 200 ||
         $idade == '' || strlen($idade) >= 10 ||
         $sexo == '' || strlen($sexo) >= 15||
         $porte == '' || strlen($porte) >= 200 ||
         $estado == '' || strlen($estado) >= 200 ||
         $cidade == '' || strlen($cidade) >= 200 ||
         $raca == '' || strlen($raca) >= 200 ||
         $situacao_animal == '' || strlen($situacao_animal) >= 250 ||
         $url_imagem == '' || strlen($url_imagem) >= 255 || !filter_var($url_imagem, FILTER_VALIDATE_URL) ||
         $cuidados_veterinarios == '' || strlen($cuidados_veterinarios) >= 200 ||
         $temperamento == '' || strlen($temperamento) >= 200 ||
         $sociabilidade == '' || strlen($sociabilidade) >= 200 ||
         $vivencia == '' || strlen($vivencia) >= 200 
    ) { 
        $msg = "Por favor, preencha todos os campos obrigatórios corretamente.";
    } else {
        try {
            $novoAnimal = create($pdo, 'animais', [
                'nome' => $nome,
                'especie' => $especie,
                'idade' => $idade,
                'sexo' => $sexo,
                'porte' => $porte,
                'estado' => $estado,
                'cidade' => $cidade,
                'raca' => $raca,
                'situacao_animal' => $situacao_animal,
                'url_imagem' => $url_imagem,
                'cuidados_veterinarios' => $cuidados_veterinarios,
                'temperamento' => $temperamento,
                'sociabilidade' => $sociabilidade,
                'vivencia' => $vivencia

            ]);
            if ($novoAnimal) {
                $_SESSION['msg'] = "Animal cadastrado com sucesso!";
                header('Location: index.php');
                exit();
            } else {
                $msg = "Erro ao realizar o cadastro. Tente novamente.";
            }
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
  <title>PetConnect - Divulgação</title>
  <link rel="stylesheet" href="divulgacao.css">
</head>
<body>
 
  <header class="cabecalho-principal">
    <div class="container-cabecalho">
    
      <div class="logo-cabecalho">
         <a href="index.php">
         <img src="./IMG/PetConnect (1).png" alt="PetConnect Logo">
        </a> 
      </div>

    
      <div class="barra-pesquisa">
        <input type="text" placeholder="para o seu pet, procure aqui">
        <button class="botao-pesquisa" type="button">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
        </button>
      </div>

    
      <nav class="menu-navegacao">
        <a href="./adocao.php">Quero Adotar</a>
        <a href="./divulgacao.php">Quero Divulgar</a>
        <a href="./produtosgeral.php">Nossos Produtos</a>
        <a href="./petconnect.html">PetConnect</a>
      </nav>

    
      <div class="acoes-usuario">
        <a href="#" class="icone-favorito">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l8.78-8.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
        </a>
        
       
        <a href="#" class="icone-carrinho">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2"><circle cx="9" cy="21" r="1"></circle><circle cx="20" cy="21" r="1"></circle><path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path></svg>
        </a>

        <div class="perfil-usuario" onclick="window.location.href='login.php'">
          <svg class="icone-user" viewBox="0 0 24 24">
            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
          </svg>
        </div>
      </div>
    </div>
  </header>
  
  <main class="conteudo-principal">
    <div class="container-central">
      <h1 class="titulo-pagina">Cadastre um animal para a adoção</h1>

      <form class="formulario-cadastro" action="" method="POST">
        
       
        <div class="campo-formulario">
          <label class="rotulo-campo" for="nome_animal">Nome do Animal</label>
          <input type="text" id="nome_animal" name="nome_animal" placeholder="Digite o nome do animal" class="entrada-texto" required>
        </div>

       
        <div class="grupo-duplo">
          <div class="campo-formulario">
            <label class="rotulo-campo" for="especie">Espécie</label>
            <select id="especie" name="especie" class="entrada-texto" required>
              <option value="">Selecione a espécie</option>
              <option value="CACHORRO">Cachorro</option>
              <option value="GATO">Gato</option>
              <option value="OUTRO">Outro</option>
            </select>
          </div>
          <div class="campo-formulario">
            <label class="rotulo-campo" for="idade">Idade</label>
            <input type="text" id="idade" name="idade" class="entrada-texto" placeholder="Digite a idade do animal" required>
          </div>
        </div>

    
        <div class="grupo-duplo">
          <div class="campo-formulario">
            <label class="rotulo-campo" for="sexo">Sexo</label>
            <select id="sexo" name="sexo" class="entrada-texto" required>
              <option value="">Selecione o sexo</option>
              <option value="MACHO">Macho</option>
              <option value="FEMEA">Fêmea</option>
              <option value="OUTRO">Outro</option>
            </select>
          </div>
          <div class="campo-formulario">
            <label class="rotulo-campo" for="porte">Porte</label>
            <select id="porte" name="porte" class="entrada-texto" required>
              <option value="">Selecione o porte</option>
              <option value="PEQUENO">Pequeno</option>
              <option value="MEDIO">Médio</option>
              <option value="GRANDE">Grande</option>
            </select>
          </div>
        </div>
        <div class="grupo-duplo">
          <div class="campo-formulario">
            <label class="rotulo-campo" for="estado">Estado</label>
            <input type="text" id="estado" name="estado" class="entrada-texto" placeholder="Digite o estado do animal" required>
          </div>
          <div class="campo-formulario">
            <label class="rotulo-campo" for="cidade">Cidade</label>
            <input type="text" id="cidade" name="cidade" class="entrada-texto" placeholder="Digite a cidade do animal" required>
          </div>
        </div>

     
        <div class="grupo-duplo alinhado-base">
          <div class="campo-formulario">
            <label class="rotulo-campo" for="situacao_animal">Situação do animal</label>
          </div>
          <div class="campo-formulario">
            <label class="rotulo-campo" for="raca">Raça</label>
            <input type="text" id="raca" name="raca" class="entrada-texto" placeholder="Digite a raça do animal" required>
          </div>
        </div>

        <div class="campo-formulario">
          <textarea class="caixa-descricao" id="situacao_animal" name="situacao_animal" placeholder="Descreva a situação do animal" required></textarea>
        </div>

    
        
        <label class="rotulo-campo" for="url_imagem">Foto Principal</label>
        <input type="url" id="url_imagem" name="url_imagem" class="entrada-texto" placeholder="Digite a URL da imagem do animal" required>
        <img src="./img-lora/patinhatraço.png" alt="patinha" width="300">
           
        <div class="secao-opcoes">
          <div class="grupo-tags">
            <label class="rotulo-campo" for="cuidados_veterinarios">Cuidados Veterinários</label>
           <input type="text" id="cuidados_veterinarios" name="cuidados_veterinarios" class="entrada-texto" placeholder="Digite os cuidados veterinários do animal" required>
          </div>
        </div>

        
        <div class="secao-opcoes">
          <div class="grupo-tags">
            <label class="rotulo-campo" for="temperamento">Temperamento</label>
            <input type="text" id="temperamento" name="temperamento" class="entrada-texto" placeholder="Digite o temperamento do animal" required>
          </div>
        </div>

    
        <div class="secao-opcoes">
          <div class="grupo-tags">
            <label class="rotulo-campo" for="sociabilidade">Sociável com...</label>
            <input type="text" id="sociabilidade" name="sociabilidade" class="entrada-texto" placeholder="Digite a sociabilidade do animal" required>
          </div>
        </div>

       
        <div class="secao-opcoes">
          <div class="grupo-tags">
            <label class="rotulo-campo" for="vivencia">Vive bem com...</label>
            <input type="text" id="vivencia" name="vivencia" class="entrada-texto" placeholder="Casa, apartamento, etc." required>
          </div>
        </div>

     
        <button type="submit" class="botao-divulgar">Divulgar</button>

      </form>
    </div>
  </main>

   
  <footer class="rodape-principal">
    <div class="container-rodape">
      
      <div class="coluna-logo-rodape">
         <a href="index.php">
          <img src="./IMG/PetConnect (1).png" alt="PetConnect Logo">
        </a> 
      </div>

      
      <div class="coluna-rodape">
        <h4 class="titulo-coluna-rodape">Quero Adotar</h4>
        <ul>
          <li><a href="./adocao.php">Cães</a></li>
          <li><a href="./adocao.php">Gatos</a></li>
        </ul>
      </div>

      <div class="coluna-rodape">
        <h4 class="titulo-coluna-rodape">Produtos</h4>
        <ul>
          <li><a href="./produtosgeral.php">Cães</a></li>
          <li><a href="./produtosgeral.php">Gatos</a></li>
        </ul>
      </div>

     
      <div class="coluna-rodape">
        <h4 class="titulo-coluna-rodape">Institucional</h4>
        <ul>
          <li><a href="./petconnect.html">PetConnect</a></li>
        </ul>
      </div>

   
      <div class="coluna-rodape">
        <h4 class="titulo-coluna-rodape">Atendimento</h4>
        <ul>
          <li><a href="#">Meu Perfil</a></li>
          <li><a href="#">Segurança e Privacidade</a></li>
        </ul>
      </div>

      
      <div class="coluna-rodape">
        <h4 class="titulo-coluna-rodape">Redes Sociais</h4>
        <div class="secao-redes">
          <div class="redes-sociais">
       
            <a href="#" target="_blank" aria-label="Instagram" class="social-btn">
              <svg viewBox="0 0 24 24">
                <path d="M7.8 2h8.4C19.4 2 22 4.6 22 7.8v8.4a5.8 5.8 0 0 1-5.8 5.8H7.8C4.6 22 2 19.4 2 16.2V7.8A5.8 5.8 0 0 1 7.8 2m-.2 2A3.6 3.6 0 0 0 4 7.6v8.8C4 18.39 5.61 20 7.6 20h8.8a3.6 3.6 0 0 0 3.6-3.6V7.6C20 5.61 18.39 4 16.4 4H7.6m9.65 1.5a1.25 1.25 0 0 1 1.25 1.25A1.25 1.25 0 0 1 17.25 8 1.25 1.25 0 0 1 16 6.75a1.25 1.25 0 0 1 1.25-1.25M12 7a5 5 0 0 1 5 5 5 5 0 0 1-5 5 5 5 0 0 1-5-5 5 5 0 0 1 5-5m0 2a3 3 0 0 0-3 3 3 3 0 0 0 3 3 3 3 0 0 0 3-3 3 3 0 0 0-3-3z"/>
              </svg>
            </a>
           
            <a href="#" target="_blank" aria-label="WhatsApp" class="social-btn">
              <svg viewBox="0 0 24 24">
                <path d="M12.04 2C6.58 2 2.13 6.45 2.13 11.91c0 1.75.46 3.45 1.32 4.95L2.05 22l5.25-1.38c1.45.79 3.08 1.21 4.74 1.21 5.46 0 9.91-4.45 9.91-9.91C21.95 6.45 17.5 2 12.04 2m5.82 14.01c-.24.68-1.41 1.3-1.96 1.38-.51.08-1.15.11-1.85-.11-.43-.14-.98-.32-1.68-.62-2.96-1.28-4.89-4.26-5.04-4.46-.15-.2-1.2-1.6-1.2-3.05 0-1.45.76-2.16 1.03-2.45.27-.29.59-.36.79-.36.2 0 .39 0 .56.01.18.01.42-.07.66.5.24.58.83 2.02.9 2.17.07.15.12.32.02.52-.1.2-.15.32-.29.49-.15.17-.31.38-.44.51-.15.15-.3.31-.13.61.17.29.76 1.25 1.63 2.02 1.12 1 2.06 1.31 2.36 1.46.29.15.46.12.63-.07.17-.2.73-.85.93-1.15.2-.29.39-.24.66-.15.27.1 1.72.81 2.02.96.29.15.49.22.56.34.07.12.07.71-.17 1.39z"/>
              </svg>
            </a>
       
            <a href="#" target="_blank" aria-label="TikTok" class="social-btn">
              <svg viewBox="0 0 24 24">
                <path d="M16.6 5.82s.51.5 0 0A4.278 4.278 0 0 1 15.54 3h-3.09v12.4a2.592 2.592 0 0 1-2.59 2.5c-1.42 0-2.6-1.16-2.6-2.6 0-1.72 1.66-3.01 3.37-2.48V9.66c-3.45-.46-6.47 2.22-6.47 5.64 0 3.33 2.76 5.7 5.69 5.7 3.14 0 5.69-2.55 5.69-5.7V9.01a7.35 7.35 0 0 0 4.3 1.38V7.3s-1.88.09-3.24-1.48z"/>
              </svg>
            </a>
      
            <a href="#" target="_blank" aria-label="Facebook" class="social-btn">
              <svg viewBox="0 0 24 24">
                <path d="M12 2.04c-5.5 0-10 4.49-10 10.02 0 5 3.66 9.15 8.44 9.9v-7H7.9v-2.9h2.54V9.85c0-2.51 1.49-3.89 3.78-3.89 1.09 0 2.23.19 2.23.19v2.47h-1.26c-1.24 0-1.63.77-1.63 1.56v1.88h2.78l-.45 2.9h-2.33v7a10 10 0 0 0 8.44-9.9c0-5.53-4.5-10.02-10-10.02z"/>
              </svg>
            </a>
          </div>
        </div>
      </div>
    </div>
  </footer>

</body>
</html>