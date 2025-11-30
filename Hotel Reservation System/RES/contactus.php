<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WedInn | Contact Us</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
        /* Page Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Header Styling */
        header {
            background-color: #444;
            padding: 10px 0;
            text-align: center;
        }

        header nav ul.menu {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        header nav ul.menu li {
            display: inline-block;
            margin-right: 15px;
        }

        header nav ul.menu li a {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        header nav ul.menu li a:hover {
            color: #f4d03f;
        }

        /* Contact Us Form Styling */
        .contactus .box {
            max-width: 900px;
            margin: 50px auto;
            background: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
            border-radius: 8px;
            opacity: 0;
            transform: translateY(50px);
            transition: opacity 1s, transform 1s;
        }

        .contactus .box.show {
            opacity: 1;
            transform: translateY(0);
        }

        .contactus h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .inputBox input,
        .inputBox textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            transition: all 0.3s ease;
        }

        .inputBox input:focus,
        .inputBox textarea:focus {
            border-color: #f4d03f;
        }

        .inputBox input[type="submit"] {
            background-color: #444;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s;
        }

        .inputBox input[type="submit"]:hover {
            background-color: #f4d03f;
            transform: scale(1.05);
        }

        /* Info Box Animations */
        .infoBox div {
            opacity: 0;
            transform: translateX(-50px);
            transition: opacity 0.8s ease-in, transform 0.8s ease-in;
        }

        .infoBox div.show {
            opacity: 1;
            transform: translateX(0);
        }

        /* Footer Styling */
        footer {
            background-color: #444;
            color: white;
            padding: 20px 0;
            text-align: center;
            margin-top: 50px;
        }

        footer .socialIcons a {
            margin-right: 10px;
            color: white;
            font-size: 20px;
            transition: transform 0.3s ease;
        }

        footer .socialIcons a:hover {
            transform: scale(1.2);
            color: #f4d03f;
        }
    </style>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            
            const boxes = document.querySelectorAll('.box, .infoBox div');
            
            const observer = new IntersectionObserver(entries => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('show');
                    }
                });
            }, { threshold: 0.1 });

            boxes.forEach(box => {
                observer.observe(box);
            });
        });
    </script>
</head>
<body>
<?php
    include "../header.php";
?>
    

    <div class="contactus">
        <div class="title">
            <h2>Get in Touch</h2>
        </div>
        <div class="box">
            <div class="contact form">
                <h3>Send a Message</h3>
                <form name="contactForm" method="post" action="addcontact.php" onsubmit="return validateForm()">
                    <div class="formBox">
                        <div class="row50">
                            <div class="inputBox">
                                <span>Full Name</span>
                                <input type="text" name="fname">
                            </div>
                            <div class="inputBox">
                                <span>Email</span>
                                <input type="text" name="email">
                            </div>
                        </div>
                        <div class="row50">
                            <div class="inputBox">
                                <span>Your Address</span>
                                <input type="text" name="address">
                            </div>
                            <div class="inputBox">
                                <span>Telephone</span>
                                <input type="text" name="tp">
                            </div>
                        </div>
                        <div class="row100">
                            <div class="inputBox">
                                <span>Message</span>
                                <textarea name="msg"></textarea>
                            </div>
                        </div>
                        <div class="row100">
                            <div class="inputBox">
                                <input type="submit" value="Send">
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <!-- Contact Info -->
            <div class="contact info">
                <h3>Contact Info</h3><br>
                <div class="infoBox">
                    <div>
                        <span><i class="fa-solid fa-location-dot"></i></span>
                        <p>SLIIT Malabe Campus, New Kandy Rd, Malabe 10115</p>
                    </div>
                    <div>
                        <span><i class="fa-solid fa-envelope"></i></span>
                        <a href="mailto:wedinn@gmail.com">wedinn@gmail.com</a>
                    </div>
                    <div>
                        <span><i class="fa-solid fa-phone"></i></span>
                        <a href="tel:+941122557452">+94 1122 557452</a>
                    </div>
                    <div class="sci">
                        <ul class="sci">
                            <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Map Section -->
            <div class="contact map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.7952178059104!2d79.9708251748096!3d6.915070393084445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae256db1a6771c5%3A0x2c63e344ab9a7536!2sSri%20Lanka%20Institute%20of%20Information%20Technology!5e0!3m2!1sen!2slk!4v1727781931272!5m2!1sen!2slk" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>

    <?php
    include "../footer.php";
?>
</body>
</html>