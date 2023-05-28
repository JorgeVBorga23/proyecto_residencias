<?php
    if(!isset($_POST['usuario']) && !isset($_POST['contrasenia'])){
        header("Location: /residencias/login");   
    }

    include_once("../bd/conexion.php");
    $usuario = $_POST['usuario'];
    $contrasenia = $_POST['contrasenia'];

    //validar que existe el usuario en la base de datos
    $consulta = $conexion->prepare("select * from Login where usuarioLogin = :usuario and contraseñaLogin = :contrasenia");
    $consulta->bindParam(":usuario", $usuario);
    $consulta->bindParam(":contrasenia", $contrasenia);
    $consulta->execute();
    $resultados = $consulta->fetch(PDO::FETCH_ASSOC);
    if($resultados){
        session_start();
        $_SESSION["logeado"] = true;
        $_SESSION['usuario'] = $usuario;
        header("Location: /residencias/index.php"); 
    }else{
        session_start();
        $_SESSION['mensaje'] = "Tus credenciales no coinciden con algun usuario existente!";
        header("Location: /residencias/login"); 
    }
?>
