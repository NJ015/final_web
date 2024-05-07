<?php

    require_once("common/function.php");
    $obj = new stdClass();
     $obj->name=VarExist($_POST["name"]);
     $obj->type=VarExist($_POST["type"]);
     $obj->price=VarExist($_POST["price"]);
    add_jewelry($obj);
    function add_jewelry($obj){
       $db = DBConncet();
       $query="INSERT INTO tbl_jewelry (`NAME`,`TYPE`,`PRICE`) VALUES ('$obj->name','$obj->type','$obj->price')";
       $stmt=$db->query($query);


    }


   
?>