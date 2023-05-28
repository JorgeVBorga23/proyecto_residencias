<?php 

include("../plantillas/top.php");
include "../plantillas/navbar.php"; ?>
<title>Validación de Requisitos</title>

<body class="text-white">
    <?php
  
    //validar sesion !!!!
    $user = ($_SESSION['usuario']);
    include_once("../bd/conexion.php");
    $query = $conexion->prepare("select a.NoControl, a.nombreAlumno, a.apellidoPaternoAlum, a.apellidoMaternoAlum, a.creditos, a.servicio, a.complementarios, a.especial, c.nombreCarrera from Alumno as a join Login as l on a.ID_Login = l.ID_Login join Carrera as c on c.ClaveCarrera = a.ID_Carrera where usuarioLogin = :usuario");
    $query->bindParam(":usuario", $user);
    $query->execute();
    $resultado = $query->fetch(PDO::FETCH_ASSOC);
    if (count($resultado) > 0) {
    ?>
        <div class="row w-100">
            <div class="col-md-6 bg-white text-center mt-5">
                <h1 class="text-dark mt-5">Bienvenido al Sistema de Residencias</h1>
                <div class="subtitulo-req">
                    <h3 class="text-white">El primer paso es verificar si estas listo</h3>
                </div>

                <img class="float-end mt-5" src="../static/TecChetumal-232x300_0 1.png" alt="mapache">
                <img class="my-5" src="../static/mapache.png" alt="mapache">


            </div>



            <div class="col-md-6 form-login w-80     my-5">
                <h2 class="text-center my-5">Prevalidacion de tus requisitos</h2>

                <div class="container w-75 mt-5 ">
                    <label for="nocontrol">Numero de Control</label>
                    <input class="form-control text-white bg-dark " type="text" disabled value=" <?php echo $resultado['NoControl'];  ?> ">
                    <br>
                    <label for="nombre">Nombre</label>
                    <input class="form-control text-white bg-dark " type="text" disabled value=" <?php echo $resultado['nombreAlumno'] . " " . $resultado['apellidoPaternoAlum'] . " " . $resultado['apellidoMaternoAlum'];  ?>  ">
                    <br>
                    <label for="carrera">Carrera</label>
                    <input class="form-control text-white bg-dark " type="text" disabled value=" <?php echo $resultado['nombreCarrera'];  ?>  ">

                    <div class="text-center my-5">
                        <p style="color: <?php echo $resultado['creditos'] != 0 ?  "green" : "grey"; ?>;">Cumples con el 70% de tus créditos</p>
                        <p style="color: <?php echo $resultado['servicio'] != 0 ?  "green" : "grey"; ?>;">Servicio socal finalizado</p>
                        <p style="color: <?php echo $resultado['complementarios'] != 0 ?  "green" : "grey"; ?>;">Haz conseguido 5 créditos complementarios</p>
                        <p style="color: <?php echo $resultado['especial'] != 0 ?  "green" : "grey"; ?>;">No debes especiales</p>

                        <!--Si no cumple con los requisitos indicarlo en este boton-->
                        <br><br><br>
                        <small><?php
                                if ($resultado['creditos'] != 0 && $resultado['servicio'] = !0 && $resultado['complementarios'] != 0 && $resultado['especial'] != 0) {
                                    $requisitos = true;
                                    echo "Cumples los requisitos!";
                                    $_SESSION['cumpleRequisitos'] = true;
                                ?>
                                <a class="btn btn-primary" href="./escogerProyecto.php">Siguiente</a>
                            <?php
                                } else {
                                    echo "No cumples los requistos aun!";
                                }
                            ?></small>
                    </div>



                </div>
            </div>
        </div>
    <?php
    } else {
        echo "no se obtuvo ningun resultado";
    }
    ?>
    <?php include("../plantillas/bottom.php"); ?>