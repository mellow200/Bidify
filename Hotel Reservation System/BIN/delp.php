<?php 

require 'config.php';

$de = $_POST["del"];

$sql = "DELETE FROM payment WHERE cardnumber = '$de'";

if($con -> query($sql))
{
   header("Location: payemnt.php");
}else{
    echo"kelauna".$con ->error;
}


$con -> close();
?>