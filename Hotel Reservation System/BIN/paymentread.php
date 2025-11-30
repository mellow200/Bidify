<?php 

require 'config.php';

$sql = "SELECT fullname , contactnumber , address , cardnumber FROM  payment ";

$result = $con ->query($sql);

if($result -> num_rows > 0)
{
    // Start of table
    echo "<table style='width: 100%; border-collapse: collapse; background-color: white;'>";
    echo "<thead>";
    echo "<tr style='background-color: #f2f2f2;'>";
    echo "<th style='border: 1px solid #ccc; padding: 10px; text-align: left;'>Full Name</th>";
    echo "<th style='border: 1px solid #ccc; padding: 10px; text-align: left;'>Contact Number</th>";
    echo "<th style='border: 1px solid #ccc; padding: 10px; text-align: left;'>Address</th>";
    echo "<th style='border: 1px solid #ccc; padding: 10px; text-align: left;'>Card Number</th>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";
    
    while($row = $result -> fetch_assoc())
    {
        echo "<tr>";
        echo "<td style='border: 1px solid #ccc; padding: 10px;'>".$row["fullname"]."</td>";
        echo "<td style='border: 1px solid #ccc; padding: 10px;'>".$row["contactnumber"]."</td>";
        echo "<td style='border: 1px solid #ccc; padding: 10px;'>".$row["address"]."</td>";
        echo "<td style='border: 1px solid #ccc; padding: 10px;'>".$row["cardnumber"]."</td>";
        echo "</tr>";
    }
    
    echo "</tbody>";
    echo "</table>"; // End of table
}

?>
