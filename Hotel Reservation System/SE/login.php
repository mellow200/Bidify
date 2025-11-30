<!DOCTYPE html>
<html>

<head>
    <title>WedInn | Login</title>
    <link rel="stylesheet" href="Styles/style.css">
    <script src="js/myscript.js" defer></script>
</head>

<body>
<?php
    include "../header.php";
?>
    <br>

    <div class="bg-img">
        <div class="contentlogin">
            <form method="post" action="logging.php" id="loginForm">
                <legend>
                    <h1>Hotel Login</h1>
                </legend>
                <div class="field-space">
                    <input type="email" name="email" placeholder="email" required>
                </div>
                <div class="field-space">
                    <input type="password" name="password" placeholder="Password" required>
                </div>

                <div class="field space submit">
                    <button type="submit" id="submit">Login</button>
                </div>
                <br>

                <div class="pass reg" style="text-align: center;">
                    <a href="hotelreg.php">Register</a>
                </div>
                <br>
                <div class="pass reg" style="text-align: center;">
                    <a href="../RES/login.php">Loggin as a user</a>
                </div>
            </form>
        </div>
    </div>
    <br>
    <br>
    <br>
    <?php
    include "../footer.php";
?>
</body>

</html>
