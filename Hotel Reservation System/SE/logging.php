<?php
session_start();  // Start the session
require 'config.php';  

// Get the submitted email and password
$email = $_POST['email'];
$password = $_POST['password'];

// Query to check the database info
$sql = "SELECT * FROM hotelregister WHERE email='$email' AND password='$password'";
$result = mysqli_query($con, $sql);

if (mysqli_num_rows($result) > 0) {
    // If exists, store session and redirect to profile page
    $user = mysqli_fetch_assoc($result);
    $_SESSION['HID'] = $user['HID'];  // Save user ID to session
    header("Location: hotelProfile.php");
} else {
    // Redirect back to login with error if credentials are wrong
    header("Location: login.php?error=wrong_credentials");
    exit();
}

mysqli_close($con);  // Close the database connection
?>
