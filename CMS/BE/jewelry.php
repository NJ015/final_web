<?php
    require_once("common/function.php");
    // echo "connected";

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

    function ChangeStatus($name){
        $db = DBConncet();
        $query="UPDATE tbl_jewelry SET `IS_ACTIVE` = 1 - `IS_ACTIVE` WHERE NAME = '$name'";
        $stmt=$db->query($query);
    }
    

// ChangeStatus("b");




   
?>