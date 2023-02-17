<?php


$servername= "localhost";
$username= "tsalast1_storeadmin";
$password= "Admin@01**";
$dbname= "tsalast1_tsalastore";


$conn= mysqli_connect($servername,$username,$password,$dbname);

if($conn){
	echo "";
}
else{
    die("Connection failed ".mysqli_connect_error());
}

?>