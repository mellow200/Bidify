<?php

$con=new mysqli("localhost","root","","iwt");

if($con->connect_error)
{
    die("connection failed".$con->connect_error);
    
}



?>