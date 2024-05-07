<?php

        session_start();
        $_SESSION = array();

        // Destroy the session  to logout the user
        session_destroy();
        header("Location:../FE/login.html"); 
        exit;





?>