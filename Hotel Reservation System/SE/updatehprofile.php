<?php

require 'config.php';

$id=$_POST["hid"];
$name=$_POST["name"];
$address=$_POST["address"];
$city=$_POST["city"];
$province=$_POST["province"];
$country=$_POST["country"];
$mail=$_POST["email"];
$fax=$_POST["fax"];
$hotline=$_POST["hotline"];

if(empty($name)||empty($address)||empty($city)||empty($province)||empty($country)||empty($mail)||empty($fax)||empty($hotline))
{
    echo "All Required";
   

}
else
{
   $sql = "UPDATE hotelregister set hotel_name= '$name',address = '$address', city = '$city',province ='$province', country = '$country' ,email= '$mail',fax= '$fax',hotline='$hotline'  WHERE HID='$id'";

   if($con->query($sql))
   {
    echo "<script> alert('Updated'); 
    window.location.href='hotelProfile.php';
    </script>";
    
    
   }
}


?>