<?php

/**
 * 
 */
class Database
{
	
	private $con;
	public function connect(){
		$servername= "127.0.0.1";
        $username= "admin";
        $password= "Admin@01**";
        $dbname= "tsalastore";
		$this->con = new Mysqli($servername,$username,$password,$dbname);
		return $this->con;
	}
}

?>

