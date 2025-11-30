<?php

require 'config.php';

$fname = $_POST["Name"];
$femail = $_POST["Email"];
$fmessage = $_POST["Message"];


$sql = "INSERT INTO feedback VALUES ('$fname','$femail','$fmessage')";

if($con->query($sql))
{
    echo "<script>alert('Feedback Added Successfully!');
    window.location.href='feedback.php';</script>";
}

else
{
    echo "Error".$con->error;
}

$con->close();


?>