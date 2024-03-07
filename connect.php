<?php
  $host = "localhost";
  $username = "root";
  $password = "";
  $dbName = "mis_project";
  $conn = mysqli_connect($host,$username,$password,$dbName);

  if(!$conn){
    die("can not connect with database");
  }
   
?>