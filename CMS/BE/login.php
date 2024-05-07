<?php

    require_once("common/function.php");
    $query="select ID from tbl_users where USERNAME='".$un."' AND PASSWORD='".$pass."'";
    
    $un=$_POST["username"];     
    $pass=$_POST["password"]; 
    $query="select ID from tbl_users where USERNAME='".$un."' AND PASSWORD='".$pass."'";
    $stmt=$db->query($query);
    $rowCount=$stmt->rowCount();
    echo $rowCount;
    if ($rowCount>0){
        session_start();
        $_SESSION["username"]=$un;
        header("location:../pages/page1.php");
    }else{
        header("location:../index.php");
    }    

?>