<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/binastyle.css">
</head>
<body>

    <?php 
    require 'config.php';
    require '../header.php';
    ?>
 <div class="delete">
<form method ="POST" action="delp.php">

<h1>Delete Summary</h1>
<br>
<input type="text" name ="del" placeholder= "Enter CardNumb" id = "delete_textbox"><br>
<br>
<input type="submit" id="delete" value ="Delete">

</form>
</div>
    <?php
    require '../footer.php';
    ?>
</body>
</html>