<?php
// this function is to connect the files with the database
    function DBConncet(){
        $dbhost="127.0.0.1";
        $dbname="db_final";
        $dbuser="root";
        $dbpass=NULL;
        $db=null;
    
        try{
        $db = new PDO("mysql:host=$dbhost; dbname=$dbname",$dbuser, $dbpass);
        }catch(PDOException $e){
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
        $db=null;
        }
        return $db;
    }



    function VarExist($var){
        if (isset($var)){
            return $var;
        }else{
            header("location:../index.html");
        }
    }






















?>