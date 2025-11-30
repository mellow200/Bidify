<?php
require "config.php";
session_start();

if (isset($_POST['update'])) {
    $id = $_POST['id'];
    $fullname = $_POST['fullname'];
    $username = $_POST['username'];
    $address = $_POST['address'];
    $email = $_POST['email'];



    // Update user details in the database without prepared statements
    $sql = "UPDATE users SET fullname='$fullname', username='$username', address='$address', email='$email' WHERE id='$id'";

    if ($con->query($sql) === TRUE) {
        echo "User details updated successfully!";
    } else {
        echo "Error updating user details: " . $con->error;
    }

    $con->close();

    // Redirect back to the profile page or show a success message
    header("Location: userprofile.php");
    exit();
}
?>
