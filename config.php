<?php
// MySQL credentials
define("DBHOST","localhost");
define("DBUSER","root");
define("DBPASSWORD","root");
define("DBDATABASE","motueka");

/* Attempt to connect to MySQL database */
$link = mysqli_connect(DBHOST, DBUSER, DBPASSWORD, DBDATABASE);
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>
