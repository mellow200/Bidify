<?php
require 'config.php';

$ID=$_POST["HID"];

//DELETE statement to remove the hotel record
$sql = "DELETE FROM hotelregister WHERE HID= '$ID'";

// Execute the SQL query 
if($con->query($sql))
{
    echo "<script> alert('Deleted'); 
    window.location.href='hotelreg.php';
    </script>";

}
else
{
    echo "Not Success";
}
?>