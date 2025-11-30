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


    <!-- Header -->

    <?php
    include "../header.php";
?>


    <!-- Form -->

    <div class="feedback_form">
        <form action="insert.php" method="post" onsubmit="return simpleEmailCheck()">
        <div class = "content">
            <br>
            <center><h1>Drop Us Your Feedback</h1></center>
            <div class = box>  
                <center><input type="text" class="info" placeholder="Name" name="Name" Required></center>
            </div>
            <div class = box>
                <center> <input type="text" class="info" placeholder="E-Mail" name="Email"></center>
            </div>
            <div class = box> 
            <center><textarea class="info" placeholder="Message" name = "Message" Required></textarea></center>
            </div>
            <center><input type = "submit" class="submit_button" value = "Submit"></center>
        </div>

    </form>

        <div class = "feedbacks">
        <br>
        <h1>Feedbacks</h1> <button onclick="window.location.href='updatefeedback.php';" class = edit_delete_button>Edit</button>
        <button onclick="window.location.href='deletefeedback.php';" class = edit_delete_button>Delete</button>
        <br>



    <!--PHP Section for Feedback Output -->
        <?php

                require 'config.php';

                $sql = "SELECT Name, Email, Message FROM feedback";

                $result = $con->query($sql);

                if($result->num_rows>0)
                {
                    while($row=$result->fetch_assoc())
                    {
                        echo "<h2>".$row["Name"]."<h2>";
                        echo "<h3>".$row["Email"]."<h3>"."<br>";
                        echo "<h4>".$row["Message"]."<h4>".
                        "<hr>"."<br><br>";
                    }
                }

                else 
                {
                    echo "<br>"."No Results";
                }

        ?>
        </div>
        <br>
        <br>
        




        <!-- Footer -->

        <?php
    include "../footer.php";
?>

    


    </div>


        
        


    

    </body>
    </html>