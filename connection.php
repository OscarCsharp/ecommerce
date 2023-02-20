<?php


$servername= "13.245.33.120:3306";
$username= "admin";
$password= "Admin@01**";
$dbname= "storedb";



$conn= mysqli_connect($servername,$username,$password,$dbname);
//$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
if($conn){
	echo "";
}
else{
    die("Connection failed ".mysqli_connect_error());
}

?>