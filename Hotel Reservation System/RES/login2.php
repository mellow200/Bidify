<?php

require 'config.php';  

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['mail']; 
    $password = $_POST['pass'];

    // Fetch the user from the database
    $sql = "SELECT * FROM users WHERE email = '$email' AND password ='$password'";
    $result = $con->query(query: $sql);

    if ($result->num_rows > 0) {
        // Fetch the row as an associative array
        $row = $result->fetch_assoc();

        // Store user info in session variables
        session_start();
        $_SESSION['u']['id'] = $row['id'];
        $_SESSION['u']['mail'] = $row['email'];

        

        // Redirect to a welcome page or dashboard
         header("Location: userprofile.php");
         exit();

    } else {
        echo "No user found with that email and password!";
    }
}

$con->close();
?>
