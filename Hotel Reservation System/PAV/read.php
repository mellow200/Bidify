<?php

require 'config.php';

$sql = "SELECT Name, Email, Message FROM feedback";

$result = $con->query($sql);

if($result->num_rows>0)
{
    while($row=$result->fetch_assoc())
    {
        echo $row["Name"]."<br>".$row["Email"]."<br>".$row["Message"];
    }
}

else 
{
    echo "No Results";
}



?>