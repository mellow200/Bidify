<!DOCTYPE html>
<html>
    <head>
        <title>Responsive About Us Section</Section></title>
        <link rel="stylesheet" href="css/binaaboutus.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
    <?php
    include "../header.php";
?>
        
        <div class="heading">
            <h1>About Us</h1>
            <p>Welcome to Wed.INN . Book your wedding here</p>
        </div>
        <div class="container">
            <section class="about">
                <div class="about-image">
                <img src="img/wedlight2.jpeg" alt="">  
                </div>
                <div class="about-content">
                    <h2>Warm embrace place</h2>
                    <p>At the heart of our service is a seamless hotel registration system designed for both brides and hotels. Brides can easily explore, book, and manage their wedding reservations, while hotels can register, showcase their offerings, and manage bookings with ease. Our mission is to bring convenience to wedding planning, ensuring that your dream day is supported by the perfect venue.</p>
                    <a href="" class="read-more">About US</a>
                </div>
                
            </section>
        </div>
        <?php
    include "../footer.php";
?>


        <script>
    // my js part-Change nav bg color on scroll
    window.addEventListener("scroll", function() {
        var nav = document.getElementById("nav");
        if (window.scrollY > 50) {
            nav.style.backgroundColor = "brown";
        } else {
            nav.style.backgroundColor = "transparent";
        }
    });

    // Dynamically set designer name
    document.addEventListener("DOMContentLoaded", function() {
        const designerName = "WED.IN Developers"; 
        document.querySelector(".designer").textContent = designerName;
    });

    
</script>
        
    </body>
    
</html>