<?php
require 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first_name = $_POST['first-name'];
    $last_name = $_POST['last-name'];
    $email = $_POST['email'];
    $date = $_POST['date'];
    $guests = $_POST['guests'];
    $message = $_POST['message'];

    $sql = "INSERT INTO reservations (first_name, last_name, email, date, guests, message)
            VALUES ('$first_name', '$last_name', '$email', '$date', '$guests', '$message')";

    if ($conn->query($sql) === TRUE) {
        echo "New reservation successfully created!";
        header("Location: page2.php"); // Redirect to a success page
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
