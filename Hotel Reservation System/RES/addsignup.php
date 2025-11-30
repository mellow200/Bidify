<?php

require 'config.php';

$Uname=$_POST["Uname"];
$fname=$_POST["fname"];
$address=$_POST["address"];
$email=$_POST["email"];
$pwd=$_POST["pwd"];


$sql=" INSERT INTO users VALUES ('','$Uname','$fname','$address','$email','$pwd')";
if ($con->query($sql))
{
    echo "Insert Successful";
    header("Location: login.php");//to loggin
    exit();
}
else{
    echo "Error".$con->error;
}
$con->close();

?>