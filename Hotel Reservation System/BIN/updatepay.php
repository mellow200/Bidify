<?php 

require 'config.php';

$uc =$_POST["cnumb"];
$un =$_POST["name"];
$uad =$_POST["adres"];
$unum = $_POST["numb"]; 

if(empty($uc)|| empty($un)|| empty($uad)|| empty($unum))
{
  echo "All require";
  
}else{
    
    $sql = "UPDATE payment SET fullname = '$un' , contactnumber = '$unum' , address = '$uad' , cardnumber  ='$uc' WHERE cardnumber = '$uc' ";
    if($con -> query($sql))
    {
         header("Location: payemnt.php");
    }else{
        echo "Failed".$con -> error;
    }
}

$con -> close();

?>