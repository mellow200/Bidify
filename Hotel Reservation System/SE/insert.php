<?php
require 'config.php';  // Include your database connection file


$name = $_POST["hname"];
$address = $_POST["haddress"];
$city = $_POST["city"];
$province = $_POST["province"];
$country = $_POST["country"];
$password = $_POST["password"];  
$mail = $_POST["hemail"];
$fax = $_POST["hfax"];
$contact = $_POST["hhotline"];

// Insert data into the database
$sql = "INSERT INTO hotelregister (hotel_name, address, city, province, country, password, email, fax, hotline) VALUES ( '$name','$address', '$city', '$province', '$country','$password', '$mail', '$fax', '$contact')";


if ($con->query($sql) === TRUE) {
    echo "Registration successful!";
    header("Location: login.php"); // Redirect to login page after successful registration
    exit();
} else {
    echo "Error".$con->error;
}


$con->close();
?>
