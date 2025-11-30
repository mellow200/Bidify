<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wedd.Inn</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer">
</head>

<body>

    <!-- Nav Bar -->

    <?php
    include "../header.php";
?>

    <!-- Display Banner -->
     
    <div class="container">
        <div class="container_text">
            <h1>Book Your Dream Wedding</h1>
            <p1>Book Hotels and wedding packages at lowest price.</p1>
        </div>
    </div>

    <br>
    <br>
    <br>

    <!-- Login and Signup -->

    <div class="hotel_selector">

        <a href="../RES/login.php">
            <div class="login_banner">
                <center><h1>Login</h1></center>
            </div>
        </a>

        <a href="../RES/signup.php">
            <div class="signup_banner">
                <center><h1>Signup</h1></center>
            </div>
        </a>
    </div>

    <br>
    <br>
    <br>
    <br>
    <br>

    <!-- Hotel List -->


    <center><h1 style="font-size: 70px;">Hotels</h1></center>
    <div class="hotel_list">

        <div class="hotel">
            <img src="img/hotel-1.jpg">
            <div class="white_space">
                <a href="../LAK/page.php">
                    <div class="white_space_content">
                        <h4>The Plaza Hotel </h4>
                        <h4>$500</h4>
                    </div>
                </a>
            </div>
        </div>

        <div class="hotel">
            <img src="img/hotel-2.jpg">
            <div class="white_space">
                <a href="../LAK/page.php">
                    <div class="white_space_content">
                        <h4>The Lotus Villa </h4>
                        <h4>$700</h4>
                    </div>
                </a>
            </div>
        </div>

        <div class="hotel">
            <img src="img/hotel-3.jpg">
            <div class="white_space">
                <a href="../LAK/page.php">
                    <div class="white_space_content">
                        <h4>Galadari Hotel</h4>
                        <h4>$800</h4>
                    </div>
                </a>
            </div>
        </div>

        <div class="hotel">
            <img src="img/hotel-4.jpg">
            <div class="white_space">
                <a href="../LAK/page.php">
                    <div class="white_space_content">
                        <h4>The Galle Face Hotel </h4>
                        <h4>$700</h4>
                    </div>
                </a>
            </div>
        </div>

    </div>

    <div class="hotel_list">

        <div class="hotel">
            <img src="img/hotel-5.jpg">
            <div class="white_space">
                <a href="../LAK/page.php">
                    <div class="white_space_content">
                        <h4>Shangrilla Hotel </h4>
                        <h4>$850</h4>
                    </div>
                </a>
            </div>
        </div>

        <div class="hotel">
            <img src="img/hotel-6.jpg">
            <div class="white_space">
                <a href="../LAK/page.php">
                    <div class="white_space_content">
                        <h4>Lavanrow Hotel </h4>
                        <h4>$900</h4>
                    </div>
                </a>
            </div>
        </div>

        <div class="hotel">
            <img src="img/hotel-1.jpg">
            <div class="white_space">
                <a href="../LAK/page.php">
                    <div class="white_space_content">
                        <h4>The Grand Hotel </h4>
                        <h4>$1000</h4>
                    </div>
                </a>
            </div>
        </div>

        <div class="hotel">
            <img src="img/hotel-5.jpg">
            <div class="white_space">
                <a href="../LAK/page.php">
                    <div class="white_space_content">
                        <h4>The Centurio Hotel </h4>
                        <h4>$650</h4>
                    </div>
                </a>
            </div>
        </div>

    </div>


    <!-- Footer -->

    <?php
    include "../footer.php";
?>


</body>
</html>
