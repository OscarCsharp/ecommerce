<?php 
session_start();
/**
 * 
 */
class Credentials
{
	
	private $con;

	function __construct()
	{
		include_once("Database.php");
		$db = new Database();
		$this->con = $db->connect();
	}


	public function createAdminAccount($fullname, $username, $password){
		$q = $this->con->query("SELECT username FROM admin WHERE username = '$username'");
		if ($q->num_rows > 0) {
			return ['status'=> 303, 'message'=> 'Email already exists'];
		}else{
			$password = password_hash($password, PASSWORD_BCRYPT, ["COST"=> 8]);
			$q = $this->con->query("INSERT INTO `admin`(`fullname`, `username`, `password`, `is_active`) VALUES ('$fullname','$username','$password','0')");
			if ($q) {
				return ['status'=> 202, 'message'=> 'Admin Created Successfully'];
			}

		}
	}

	public function loginAdmin($username, $password){
		$q = $this->con->query("SELECT * FROM admin WHERE username = '$username' LIMIT 1");
		if ($q->num_rows > 0) {
			$row = $q->fetch_assoc();
			if (password_verify($password, $row['password'])) {
				$_SESSION['admin_name'] = $row['fullname'];
				$_SESSION['admin_id'] = $row['id'];
				return ['status'=> 202, 'message'=> 'Login Successful'];
			}else{
				return ['status'=> 303, 'message'=> 'Login Fail'];
			}
		}else{
			return ['status'=> 303, 'message'=> 'Account not created yet with this email'];
		}
	}

}

if (isset($_POST['admin_register'])) {
	extract($_POST);
	if (!empty($fullname) && !empty($username) && !empty($password) && !empty($cpassword)) {
		if ($password == $cpassword) {
			$c = new Credentials();
			$result = $c->createAdminAccount($fullname, $username, $password);
			echo json_encode($result);
			exit();
		}else{
			echo json_encode(['status'=> 303, 'message'=> 'Password mismatch']);
			exit();
		}
	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Empty fields']);
		exit();
	}
}

if (isset($_POST['admin_login'])) {
	extract($_POST);
	if (!empty($username) && !empty($password)) {
		$c = new Credentials();
		$result = $c->loginAdmin($username, $password);
		echo json_encode($result);
		exit();
	}else{
		echo json_encode(['status'=> 303, 'message'=> 'Empty fields']);
		exit();
	}
}


?>