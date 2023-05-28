<?php

session_start();

?>


<nav class="navbar navbar-dark bg-dark text-white">

    <a class="navbar-brand mx-5" href="../index.php">
        <img src="../static/logoTecNM 1.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
        Sistema de Residencias | ITCH
    </a>

    <div class="mx-5">
        <?php if (isset($_SESSION['usuario'])) { ?>
            <div>
                Estas conectado como: <?php echo $_SESSION['usuario'] ?>
                <button class="btn btn-danger">
                    <a href="../login/logout.php">
                        <svg class="text-white" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z" />
                            <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z" />
                        </svg></a>
                </button>
            </div>
        <?php } else { ?>
            <a class="btn btn-secondary" href="../login/index.php">Iniciar sesion</a>

        <?php } ?>
    </div>
</nav>