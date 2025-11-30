<?php

require 'config.php';

$fname=$_POST["fname"];
$contact=$_POST["contact"];
$adress=$_POST["adress"];
$nameoncard=$_POST["nameoncard"];

$cnumber=$_POST["cnumber"];
$expmonth=$_POST["expmonth"];
$expyear=$_POST["expyear"];
$cvv=$_POST["cvv"];

$sql="INSERT INTO payment VALUES('$fname','$contact','$adress','$nameoncard','$cnumber','$expmonth','$expyear','$cvv')";
if($con->query($sql)){
    header("Location:payemnt.php"); 

}

$con->close();

?>