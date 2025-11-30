<!DOCTYPE html>
<html lang="en">
<head>
    <title>WedInn | Edit Details</title>
    <link rel="stylesheet" href="css/new.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<?php
    include "../header.php";
?>
    
</div>
    

<main>
<section class="reservation-inquiry">
            <h3><center>Reservation Inquiry</center></h3>
            <form action="update.php" method="POST">

                First Name:
                <input type="text" id="first-name" name="first-name" required>

                Last Name:
                <input type="text" id="last-name" name="last-name" required>

                Email:
                <input type="email" id="email" name="email" required>

                Date:
                <input type="date" id="date" name="date" required>

                No of Guests:
                <input type="number" id="guests" name="guests" required>

                Message:
                <textarea id="message" name="message" rows="4"></textarea>

                <button type="submit">Update</button>
                

            </form>
           <form action="delete_resv.php" method="POST">
            <br>
           Email:
           <input type="email" id="email" name="email" required>
           <button type="submit">Delete</button>

        </form>
        </section>

        
        <br>
        <br>
        <section class = "res_display">
        <h1>Reservations</h1>
        <br>
        <br>

        <?php

                require 'config.php';

                $sql = "SELECT id, first_name,last_name,email,date, guests, message  FROM reservations";

                $result = $conn->query($sql);

                if($result->num_rows>0)
                {
                    while($row=$result->fetch_assoc())
                    {
                        echo "<h3>First Name - ".$row["first_name"]."<h3>";
                        echo "<h4>Last Name - ".$row["last_name"]."<h4>";
                        echo "<h4> E-Mail - ".$row["email"]."<h4>";
                        echo "<h4> Date - ".$row["date"]."<h4>";
                        echo "<h4>Guests - ".$row["guests"]."<h4>";
                        echo "<h4> Message - ".$row["message"]."<h4>";
                        echo "<div class='input-delete'>
                            <form method='post' action='../BIN/payemnt.php'>
                            <div class='del-btn'>
                            <button type='submit' class='delete'>Payment</button>
                            </div>
                            </form>
                            </div><br><br>";
                        
                    
                    }



                }

                else 
                {
                    echo "<br>"."No Results";
                }

        ?>

</section>
    </main>
    
    
    
    <?php
    include "../footer.php";
?>
    

</body>
</html>