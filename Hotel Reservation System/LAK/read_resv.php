<?php
require 'config.php';

$sql = "SELECT * FROM reservations";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Date</th>
                <th>Guests</th>
                <th>Message</th>
                <th>Actions</th>
            </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>".$row['id']."</td>
                <td>".$row['first_name']."</td>
                <td>".$row['last_name']."</td>
                <td>".$row['email']."</td>
                <td>".$row['date']."</td>
                <td>".$row['guests']."</td>
                <td>".$row['message']."</td>
                <td><a href='update_resv.php?id=".$row['id']."'>Edit</a> | <a href='delete_resv.php?id=".$row['id']."'>Delete</a></td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "No reservations found.";
}

$conn->close();
?>
