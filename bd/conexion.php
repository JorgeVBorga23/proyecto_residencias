<?php
    $servidor = "DESKTOP-UTE5BC8\INSTANCIA1";
    $usuario = "sa";
    $contrasenia = "123";
    $baseDatos = "Residencias";

    try {
        $conexion = new PDO("sqlsrv:server=$servidor;database=$baseDatos", $usuario, $contrasenia);
        $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (\Throwable $th) {
        echo "ocurrio un error al conectar la base de datos: " .$th->getMessage();
        die();
    }
?>
