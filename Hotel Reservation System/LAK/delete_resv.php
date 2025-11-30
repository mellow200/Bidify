<?php
require 'config.php';

$semail = $_POST["email"];
    
    $sql = "DELETE FROM reservations WHERE email = '$semail'";

    if ($conn->query($sql)) {
        echo "<script>alert('Deleted!');
        window.location.href='page2.php'</script>";
        
        exit();
    } else {
        echo "Error deleting reservation: " . $conn->error;
    }

    $conn->close();

?>
