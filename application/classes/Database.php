<?php

/**
 * 
 */
class Database
{
	
	private $con;
	public function connect(){
		$servername= "13.245.33.120:3306";
        $username= "admin";
        $password= "Admin@01**";
        $dbname= "storedb";
		$this->con = new Mysqli($servername,$username,$password,$dbname);
		return $this->con;
	}
}

?>

$servername= "13.245.33.120:3306";
$username= "admin";
$password= "Admin@01**";
$dbname= "storedb";
