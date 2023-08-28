<?php
    include('conexao.php');
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM USUARIO
            WHERE email_usuario = '$email'
                AND senha       = '$senha'";
    $result = mysqli_query($con,$sql);
    $rowcount = mysqli_num_rows($result);
    if($rowcount > 0){
        include('criasessao.php');
        // array com os dados do usuário que estão no banco
        $_SESSION['login'] = mysqli_fetch_array($result);
        // Volta para a página inicial
        header('Location: index.php');
    }
    else 
    {
        echo "<h1>Usuário não encontrado!</h1>";
    }
?>