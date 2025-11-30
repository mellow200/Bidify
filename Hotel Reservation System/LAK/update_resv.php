<?php
require 'config.php';

if (isset($_GET['email'])) {
    $id = $_GET['email'];
    
    $sql = "SELECT * FROM reservations WHERE email = $email";
    $result = $conn->query($sql);
    
    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        ?>
        <form action="update.php" method="POST">
            <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
            First Name: <input type="text" name="first-name" value="<?php echo $row['first_name']; ?>"><br>
            Last Name: <input type="text" name="last-name" value="<?php echo $row['last_name']; ?>"><br>
            Email: <input type="email" name="email" value="<?php echo $row['email']; ?>"><br>
            Date: <input type="date" name="date" value="<?php echo $row['date']; ?>"><br>
            No of Guests: <input type="number" name="guests" value="<?php echo $row['guests']; ?>"><br>
            Message: <textarea name="message"><?php echo $row['message']; ?></textarea><br>
            <button type="submit">Update</button>
        </form>
        <?php
    }
}

$conn->close();
?>
