

<!DOCTYPE html>
<html>
    <title>User profile 2</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</html>

<body>
<?php
    include "../header.php";
?>
    <br>
        <div class="bg-img">
            <br>
            <h1 style="color :brown; text-align:center;">User Profile</h1>
            <div class="contentuser">
                <div class="account-info-section">
                    <h2>Account Information</h2><br><br>
                   
                    <div class="read">


                    <?php
                        require "config.php";
                        session_start();
                        $id = $_SESSION['u']['id'];

                        // Fetch user details from the database
                        $sql = "SELECT id, username, fullname, address, email FROM users WHERE id = '$id'";
                        $result = $con->query($sql);

                        if ($result->num_rows > 0) {
                            $row = $result->fetch_assoc();
                            ?>
                            <div>
                                <form method="POST" action="update.php">
                                  
                                    <input type="hidden" id="id" name="id" value="<?php echo $row['id']; ?>" readonly><br><br>

                                    <label for="fullname">Full Name:</label>
                                    <input type="text" id="fullname" name="fullname" value="<?php echo $row['fullname']; ?>"><br><br>

                                    <label for="username">Username:</label>
                                    <input type="text" id="username" name="username" value="<?php echo $row['username']; ?>"><br><br>

                                    <label for="address">Address:</label>
                                    <input type="text" id="address" name="address" value="<?php echo $row['address']; ?>"><br><br>

                                    <label for="email">Email:</label>
                                    <input type="email" id="email" name="email" value="<?php echo $row['email']; ?>"><br><br>
                        
                                    <button type="submit"  class="delete" name="update">Update</button>
                                    <button type="submit"  class="delete"  name="delete" form="deleteForm">Delete</button>
                                </form>
                        
                                <form method="POST" action="delete.php" id="deleteForm" style="display:none;">
                                    <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                                </form>
                            </div>
                            <?php
                        } else {
                            echo "No user found!";
                        }
                        ?>
                    </div>
                  
                </div>
                <br>
            </div>
           


            
        </div>
        <?php
    include "../footer.php";
?>
</body>