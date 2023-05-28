<?php 
include "../plantillas/top.php";
include "../plantillas/navbar.php";

?>
<title>Elige un Proyecto</title>

<body>
    <div class="cotainer">

        <div class="row h-100 w-100 my-5">
            <div class="col-md-6 text-white bg-white text-center">
                <h1 class="text-dark my-5">Haz completado tus requisitos exitosamente!</h1>
                <h3 class="subtitulo-req my-5">Es momento de que escojas un proyecto</h3>

                <img src="../static/mapache.png" alt="mapache">


                <?php
                session_start();
                include_once("../bd/conexion.php");
                $con = $conexion->prepare("select * from Proyecto");
                $con->execute();
                $respuesta = $con->fetchAll(PDO::FETCH_ASSOC);
                ?>
            </div>

            <div class="col-md-6 text-white form-login ">
                <img classs="float-end mt-5" src="../static/TecChetumal-232x300_0 1.png" alt="">
                <div class="div text-center">
                <h2 class="my-5">¿Como deseas continuar?</h2>
                
                <div class="container w-75">
                <form action="./solicitud.php" method="POST">
                    <select class="form-select" name="proyecto" id="proyecto">
                        <?php for ($i = 0; $i < count($respuesta); $i++) {  ?>
                            <option value="<?php echo $respuesta[$i]['ID_Proyecto'] ?>"><?php echo $respuesta[$i]['nombreProyecto'] ?></option>
                        <?php } ?>
                    </select>
                    <br>
                    <input class="btn btn-primary mt-5 mb-2" type="submit" name="enviaProyecto" value="Quiero este proyecto">
                </form>
                <p class="my-2">o</p>
                <a href="" class="btn btn-primary mt-2 mb-5" >Deseo proponer un proyecto!</a>
                </div>
                </div>
            </div>
        </div>
    </div>

    </html>

    <?php include "../plantillas/bottom.php"; ?>