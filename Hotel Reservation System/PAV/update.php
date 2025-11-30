<?php

require 'config.php';

$fname = $_POST["Name"];
$femail = $_POST["Email"];
$fmessage = $_POST["Message"];

    $sql = "UPDATE feedback set Name= '$fname' , Message = '$fmessage' WHERE  Email = '$femail' ";

    if ($con->query($sql))
    {
        echo "<script>alert('Updated!');
        window.location.href='feedback.php'</script>";
    }
    else {
        echo "<script>alert('Not Updated!');</script>";
    }



?>