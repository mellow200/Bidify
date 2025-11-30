<?php
require 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $sfirst_name = $_POST['first-name'];
    $slast_name = $_POST['last-name'];
    $semail = $_POST['email'];
    $sdate = $_POST['date'];
    $sguests = $_POST['guests'];
    $smessage = $_POST['message'];

    $sql = "UPDATE reservations 
            SET first_name='$sfirst_name', last_name='$slast_name', date='$sdate', guests='$sguests', message='$smessage'
            WHERE email='$semail'";

    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Updated!');
        window.location.href='page2.php'</script>";
        exit();
    } else {
        echo "Error updating reservation: " . $conn->error;
    }

    $conn->close();
}
?>
