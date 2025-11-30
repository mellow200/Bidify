<?php
require 'config.php';

$Id = $_POST["id"];
$sql = "DELETE FROM users WHERE id='$Id'";

if ($con->query($sql) ) {
    echo "Deleted";
    header("Location: signup.php");
    exit();
} else {
    echo "not successful " ;
}


?>
