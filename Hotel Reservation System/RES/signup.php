<!DOCTYPE html>
<html>
    <head>
        <title>
            WedInn | Sign-Up
        </title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        
    </head>
    <body>
 
  
    <?php
    include "../header.php";
?>
        <div class="bg-img">
            <div class="contentsignup">
                <header style="color: white;"><h1>Sign-Up</h1></header><br>
                <form action="addsignup.php" method="POST">
                    
                    <div class="field space">
                        <input name="Uname" type="text" placeholder="Username" required>
                    </div>
                    <div class="field space">
                        <input name="fname" type="text" placeholder="Full Name"  required>
                    </div>
                    <div class="field space">
                        <input name="address" type="text" placeholder="Address"  required>
                    </div>
                    <div class="field space">
                        <input name="email" type="email" placeholder="E-mail"  required>
                    </div>
                    
                    <div class="field space">
                        <input name="pwd" type="password" placeholder="Password"  required>
                    </div>
                    <div class="field space">
                        <input type="password" placeholder="Re-Enter Password"  required>
                    </div>
                    
                    
                    <br>
                    
                        
                        <div class="button">
                            <button type="submit" class="delete">Sign Up</button>
                        </div>
                    <p>Already Have an account? <a href="login.php">Login Here</a></p>
                    <br>
                    <p>Register as a Hotel <a href="../SE/hotelreg.php">Register Here</a></p>
                    <div class="link">
                        <div class="facebook">
                            <i class="fab fa-facebook-f"></i>
                        </div>
                        <div class="instagram">
                            <i class="fab fa-instagram"></i>
                        </div>
                        <div class="twitter">
                            <i class="fab fa-twitter"></i>
                        </div>
                    </div>
                </form>
                
            </div>
            
               
            </div>
            
            </div>
            
        </div>
        
        <?php
    include "../footer.php";
?>
    </body>
</html>