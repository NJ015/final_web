<?php
    require_once("common/function.php");
    // echo "connected";

    function add(){

    }

    function ChangeStatus($name){
        $db = DBConncet();
        $query="UPDATE tbl_jewelry SET `IS_ACTIVE` = 1 - `IS_ACTIVE` WHERE NAME = '$name'";
        $stmt=$db->query($query);
    }
    

// ChangeStatus("b");





?>