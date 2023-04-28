<?php
$servername= "127.0.0.1";
$username= "admin";
$password= "Admin@01**";
$dbname= "tsalastore";
$conn= mysqli_connect($servername,$username,$password,$dbname);

if($conn){
	echo "";
}
else{
    die("Connection failed ".mysqli_connect_error());
}

?>