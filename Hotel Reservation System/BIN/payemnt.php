<!DOCTYPE html>
<html>
<head>
    <title> Payment</title>
    <link rel="stylesheet" href="css/binastyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<?php
    include "../header.php";
?>
    <div class="container">
        <form action="addpayment.php" method="post" onsubmit="return validateCVV()"> 
            <div class="row">
                <div class="column">
                    <h3 class = "title">Personal Information</h3>
                    <div class="input-box">
                        <span>Full Name : </span>
                        <input name="fname" type="text"
                        placeholder="   Andrew ">
                    </div>
                    <div class="input-box">
                        <span>Contact Number : </span>
                        <input name="contact" type="number"
                        placeholder="07* ******* ">
                    </div>
                    <div class="input-box">
                        <span>Adress : </span>
                        <input name="adress" type="text"
                        placeholder="No / street ">
                    </div>
                </div>    
            </div>
            <div class="column">
                <h3 class = "title">Payment method</h3>
                <div class="input-box">
                    <span>Cards Accepted : </span>
                    <img src="img/imgcards.png" alt="">
                </div>
                <div class="input-box">
                    <span>Name on card : </span>
                    <input name="nameoncard" type="text"
                    placeholder=" Andrew Tate ">
                </div>
                <div class="input-box">
                    <span>Card Number : </span>
                    <input name="cnumber" type="number"
                    placeholder=" 2002 **** **** **** ">
                </div>
                <div class="input-box">
                    <span>Exp Month : </span>
                    <input name="expmonth" type="text"
                    placeholder=" August ">
                </div>
                <div class="input-box">
                    <span>Exp Year : </span>
                    <input name="expyear" type="number"
                    placeholder=" 2028 ">
                </div>
                <div class="input-box">
                    <span>C V V : </span>
                    <input name="cvv" type="number"
                    placeholder=" 566 ">
                </div>
                <button type="submit" class="btn">Submit</button>   
            </div>
             
        </form>
   
        <div>
        <h1 style="color: white;">Summary :</h1><br>

<?php 
require 'paymentread.php';
?>
<br>
<div style="color:white;">
<form method="POST" action="updatepay.php">
    <label for="">Enter Card Number :</label>
    <input type="number" name="cnumb" placeholder="Card Number"><br>
    
    <label for="">Change Name :</label>
    <input type="text" name="name" placeholder="Enter New Name"><br>
    
    <label for="">Change Address :</label>
    <input type="text" name="adres" placeholder="New Address"><br>
    
    <label for="">Change Contact :</label>
    <input type="number" name="numb" placeholder="New Contact Number :"><br>
    
    <input type="submit" value="Edit">
    <button><a href="deletepay.php">Delete</a></button>
</form>
</div>
</div>

    </div>

    <!--footer part-->
    <?php
    include "../footer.php";
?>
   
<script>
    function validateCVV() {
        var cvv = document.forms[0]["cvv"].value;

        // Checking CVV has 3 digits
        if (cvv.length != 3) {
            alert("CVV must be exactly 3 digits.");
            return false;
        }
        return true;
    }
</script>

  
</body>
</html>