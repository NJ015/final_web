<?php
    require_once("common/function.php");
    

     $obj = new stdClass();
     $obj->name=VarExist($_POST["name"]);
     $obj->email=VarExist($_POST["email"]);
     $obj->sub=VarExist($_POST["subject"]);
     $obj->mess=VarExist($_POST["message"]);
     
     add_contactInfo($obj);


    function add_contactInfo($obj){
       $db = DBConncet();
       $query="INSERT INTO tbl_contact (`NAME`,`EMAIL`,`SUBJECT`,`MESSAGE`) VALUES ('$obj->name','$obj->email','$obj->sub','$obj->mess')";
       $stmt=$db->query($query);
    //   header("Location:../FE/about.html");

    }

   
    

// ChangeStatus("b");




   
?>