<!DOCTYPE html>
<html lang="en">
<head>
    <title>WedInn | Reservation</title>
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
            <form action="process.php" method="POST">

                <br>
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

                <button class="btn" type="submit" >Submit</button>
                <br>

            </form>
            <button onclick="window.location.href='page2.php';">Edit</button>
            <button type="submit">Delete</button>
              
<br>

    </main>
    <?php
    include "../footer.php";
?>
    

</body>
</html>