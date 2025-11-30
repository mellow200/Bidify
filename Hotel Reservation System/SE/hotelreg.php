<!DOCTYPE html>
<html>

<head>
    <title>
        WedInn | Register
    </title>
    <link rel="stylesheet" href="Styles/style.css">
    <script src="js/myscript.js" defer></script>
</head>

<body>
<?php
    include "../header.php";
?>
    <br>
    <br>
    <br>

    <div class="bg-img">

        <div class="contentregister">
            <form method="post" action="insert.php" id="registerForm">
                <legend>
                    <h1>Register</h1>
                </legend>
                <div class="field-space">
                    <input type="text" name="hname" placeholder="Hotel name" required>
                </div>
                <div class="field-space">
                    <input type="text"  name="haddress" placeholder="Address" required>
                </div>
                <div class="field-space">
                    
                    <input type="text" name="city" placeholder="City" required>
                    <input type="text" name="province" placeholder="Province/Region" required>
                    <input type="text" name="country" placeholder="Country" required>
                </div>

                <div class="field-space">
                    <input type="password" name="password" id="pass" placeholder="Create password" required>
                </div>

                <div class="field-space">
                    <input type="password"  name="repasword" id="repass" placeholder="Re-enter password" required>
                </div>

                <div class="field-space">
                    <input type="email" id="myEmail"  name="hemail" placeholder="E-mail" required>
                </div>
                <div class="field-space">
                    <input type="text" placeholder="Fax"  name="hfax" required>
                </div>
                <div class="field-space">
                    <input type="text" placeholder="Hotline"  name="hhotline" required>
                </div>
               

                <div class="field space submit">
                    <button type="submit" id="submit">Register</button>
                </div>

                <br>
                <div class="pass reg" style="text-align: center;">
                    <a href="login.php">Hotel logging</a>
                </div>
                <br>
                <div class="pass reg" style="text-align: center;">
                    <a href="../RES/signup.php">Sign up as user</a>
                </div>
            </form>
        </div>
    </div>
    <br>
    <br>
    <?php
    include "../footer.php";
?>
</body>

</html>


