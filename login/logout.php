<?php
    session_start();
    $_SESSION['logeado'] = false;
    session_destroy();
    

    header("Location: ../index.php");

?>