<?php
session_start();

// Check if logged in
if (!isset($_SESSION['HID'])) {
    header("Location: logging.php");  // Redirect to login if not logged in
    exit();
}

require 'config.php';

// Fetch logged-in user details
$ID = $_SESSION['HID'];
$sql = "SELECT HID, hotel_name, address, city, province, country, email, fax, hotline FROM hotelregister WHERE HID='$ID'";
$result = mysqli_query($con, $sql);

// Get user details
if ($row = mysqli_fetch_assoc($result)) {
    // $row now contains the user's information
}

mysqli_close($con);  // Close the database connection
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="styles/style.css">

</head>

<body>

    <?php
    include "../header.php";
    ?>
    <div class="backimage"></div>

    <div class="change-acc-info">
        <form method="post" action="updatehprofile.php">
            <h2> Account Information</h2>
            <label>Hotel Name</label>
            <input type="hidden" value="<?php echo $row["HID"] ?>" name="hid">
            <input type="text" name="name" value="<?php echo $row["hotel_name"] ?>">
            <lable>Address</lable>
            <input type="text" name="address" value="<?php echo $row["address"] ?>">
            <label>City</label>
            <input type="text" name="city" value="<?php echo $row["city"] ?>">
            <label>Province/Region</label>
            <input type="text" name="province" value="<?php echo $row["province"] ?>">
            <label>Country</label>
            <input type="text" name="country" value="<?php echo $row["country"] ?>">
            <label>Email</label>
            <input type="email" name="email" value="<?php echo $row["email"] ?>">
            <label>Fax</label>
            <input type="text" name="fax" value="<?php echo $row["fax"] ?>">
            <label>Phone Number</label>
            <input type="tel" name="hotline" value="<?php echo $row["hotline"] ?>">
            <div class="submit-details">
                <button type="submit" class="change-details">Change</button>
            </div>
        </form>
    </div>

    <div class="input-delete">

        <form method="post" action="deleteRprofile.php">
            <h2> Delete Account</h2>

            <input type="hidden" name="HID" value="<?php echo $row['HID']; ?>">
            <div class="del-btn">
                <button type="submit" class="delete">Delete</button>

            </div>
        </form>
    </div>
    <br>
    <?php
    include "../footer.php";
    ?>
</body>

</html>