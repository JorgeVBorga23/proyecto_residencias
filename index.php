
<?php include("./plantillas/top.php"); ?>

<title>Dashboard</title>

<style>
    body{
        background-color: black;
    }
</style>

<?php
session_start();
if (!isset($_SESSION["logeado"])) {
    header("Location: /residencias/login");
}
if (!isset($_SESSION["cumpleRequisitos"]) && isset($_SESSION["logeado"])) {
    header("Location: /residencias/validacion");
}
?>
<h1 class="text-white">esto solo lo puedes ver si estas logeado y ya has seleccionado proyecto</h1>
<a href="./validacion/index.php">Ir a validacion</a>
<?php include("./plantillas/bottom.php"); ?>