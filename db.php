<?php
    $servername='localhost:3306';
    $username='roof';
    $password='kUf1f5%9';
    $dbname = "plant_samurai";
    $conn=mysqli_connect($servername,$username,$password,"$dbname");
      if(!$conn){
          die('Could not Connect MySql Server:' .mysql_error());
        }
?>