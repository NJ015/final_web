<?php
    require_once("common/function.php");
    $db = DBConncet();
    $un=VarExist($_POST["username"]);     
    $pass=VarExist($_POST["password"]);
    $query="INSERT INTO tbl_users (`USERNAME`,`PASSWORD`) VALUES ($un,$pass)";
    $stmt=$db->query($query);
 
?>