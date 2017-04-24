<?php

class DB {
	
	protected $db_name = 'databasename';
	protected $db_user = 'databaseuser';
	protected $db_pass = 'databasepassword';
	protected $db_host = 'databasehost';
	
	// Open a connect to the database.
	// Make sure this is called on every page that needs to use the database.
	
	public function connect() {
	
		$this->connect_db = new mysqli( $this->db_host, $this->db_user, $this->db_pass, $this->db_name );
		
		if ( mysqli_connect_errno() ) {
			printf("Connection failed: %s", mysqli_connect_error());
			exit();
		}
		return true;
		
	}

	// UserTools.class.php

require_once 'User.class.php';
require_once 'DB.class.php';

class UserTools {

    // Log the user in.
	// First check to see if the username and password match a row in the database.
	// If it is successful, set the session varialbes and store the user object within.
	
	public function login( $username, $password ) {
		
		$hashedPassword = md5($password);
		$result = mysqli_query("SELECT * FROM CLIENT WHERE username = '$username' AND Password = '$hashedPassword' ");
		
		if ( mysqli_num_rows($result) == 1 ) {
			$_SESSION[ "user" ] = serialize( new User( mysqli_fetch_assoc( $result ) ) );
			$_SESSION[ 'login_time' ] = time();
			$_SESSION[ 'logged_in' ] = 1;
			return true;
		} else {
			return false;
		}
	}
}
	

}


$username="1";
$password="1";
$database= ;

$Nume = $_POST['Nume'];
$Prenume=$_POST['Prenume'];
$Username=$_POST['Username'];
$Password=$_POST['Password'];
$Sexul=$_POST['sex'];
$e_mail=$_POST['e_mail'];
$Localitate=$_POST['Localitate'];
$Judet=$_POST['Judet'];
$Tara=$_POST['Tara'];

mysql_connect(localhost,$username,$password);

@mysql_select_db($database) or die( "Unable to select database");
$query = "SELECT * FROM CLIENT WHERE NUME='$Nume' ";

mysql_query($query);
mysql_close();?>