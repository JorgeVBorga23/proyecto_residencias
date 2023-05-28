<?php include("../plantillas/top.php");
session_start();
if(isset($_SESSION['mensaje'])){
    $erro = $_SESSION['mensaje'];
    echo "<script>alert('$erro')</script>";
    $_SESSION['mensaje'] = null;
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesion | Residencias</title>
</head>

<body>

    <div class="cotainer w-100">
        <div class="row w-100 h-100">
            <div class="col">
                <div class="fondo-itch"></div>
            </div>
            <div class="col form-login">
                <img class="float-end py-5" src="../static/TecChetumal-232x300_0 1.png" alt="logo tec chetumal">
                <img class="float-start py-5" src="../static/logoTecNM 1.png" alt="logo tec chetumal">
                <div class="container justify-content-center align-items-center row">

                    <h1 class="text-white text-center mt-5">Sistema de Residencias</h1>
                    <h2 class="text-white text-center mb-5">Instituto Tecnológico de Chetumal</h2>
                    <div class="container w-75">
                        <form action="./inicioSesion.php" method="POST">
                            <label for="usuario" class="text-white">Usuario</label>
                            <input class="form-control text-white inputs" type="text" name="usuario" required placeholder="Ingresa tu nombre de usuario">
                            <br>
                            <label class="text-white" for="contrasenia">Contraseña</label>
                            <input class="form-control text-white inputs" type="password" name="contrasenia" required placeholder="Ingresa tu contraseña">
                            <br>
                            <input class="btn btn-primary form-control mt-2 mb-5" type="submit" value="Iniciar Sesion">

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
<?php include("../plantillas/bottom.php"); ?>