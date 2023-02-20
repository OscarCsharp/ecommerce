<?php

/**
 * 
 */
class Database
{
	
	private $con;
	public function connect(){
		$this->con = new Mysqli("localhost", "tsalast1_storeadmin", "Admin@01**", "tsalast1_tsalastore");
		return $this->con;
	}
}

?>