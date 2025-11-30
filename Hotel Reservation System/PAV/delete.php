<?php

require 'config.php';

$femail = $_POST["Email"];

$sql = "DELETE FROM feedback WHERE Email = '$femail'";

if($con->query($sql))
{
    echo "<script>alert('Deleted!');
    window.location.href='feedback.php'</script>";
}

else 
{
    echo "<script>alert('Coudn't Delete!');</script>";
}


?>