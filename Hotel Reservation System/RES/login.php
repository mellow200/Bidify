<!DOCTYPE html>
<html>
    <head>
        <title>
            WedInn | Login
        </title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        
    </head>
    <body>
    <?php
    include "../header.php";
?>
   
        <div class="bg-img" >
            <div class="content">
                <header style="color: white;">Login</header>
                
                <form action="login2.php" method="POST">
                    
                    <div class="field space">
                        <span class="fa fa-user"></span>
                        <input type="email" placeholder="email" name="mail"  required>
                    </div>
                    <div class="field space">
                        <span class="fa-solid fa-lock"></span>
                        <input type="password" placeholder="Password" name="pass" required>
                    </div>
                    <div class="space remember" >
                        <input type="checkbox" name="remember" value="Remember me" style="margin-right: 10px;">
                        <label for="Remember me" style="text-align: left;">Remember me</label>
                    </div>
                    
                    <div class="pass">
                       <a href="#">Forgot Password</a> 
                    </div>
                    <div class="button">
                            <button type="submit" class="delete">LOGIN</a></button>
                        </div>
                    <div class="signup"><a href=signup.php>Or Sign Up</a></div>
                    <div class="link"></div>
                    <div class="signup"><a href=../SE/login.php>Login as a Hotel</a></div>
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
        

        <?php
    include "../footer.php";
?>
    </body>
</html>