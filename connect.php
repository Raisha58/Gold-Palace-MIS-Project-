<?php
  $host = "localhost";
  $username = "root";
  $password = "";
  $dbName = "gold-palace";
  $conn = mysqli_connect($host,$username,$password,$dbName);

  if(!$conn){
    die("can not connect with database");
  }
   
?>