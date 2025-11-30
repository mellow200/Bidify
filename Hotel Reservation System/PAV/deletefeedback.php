<!doctype html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wedd.Inn</title>
        <link rel="stylesheet" href="style_feedback.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
        <script src="emailvalid.js" defer></script>
    
    </head>

    <body> 



        

    <?php
    include "../header.php";
?>






    <div class="feedback_form">
        <form action="delete.php" method="post">
        <div class = "content">
            <br>
            <center><h1>Delete Your Feedback</h1></center>

            <div class = box>  

                <br>
                <br>
                <center><input type="text" class="info" placeholder="Email" name="Email" Required></center>
            </div>

            <center><input type = "submit" class="submit_button" value = "Delete"></center>
            

            
        </div>

        </form>

        
    </div>





    <?php
    include "../footer.php";
?>


    </body>
    </html>