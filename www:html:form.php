<?php
$host = "mysql";
$db_name = "db";
$username = "root";
$password = "password123";
$connection = null;
try{
$connection = new PDO("mysql:host=" . $host . ";dbname=" . $db_name, $username, $password);
$connection->exec("set names utf8");
}catch(PDOException $exception){
echo "Connection error: " . $exception->getMessage();
}

function saveData($firstname, $lastname, $email, $message){
global $connection;
$query = "INSERT INTO test(firstname, lastname, email, message) VALUES( :firstname, :lastname, :email, :message)";

$callToDb = $connection->prepare( $query );
$firstname=htmlspecialchars(strip_tags($firstname));
$lastname=htmlspecialchars(strip_tags($lastname));
$email=htmlspecialchars(strip_tags($email));
$message=htmlspecialchars(strip_tags($message));
$callToDb->bindParam(":firstname",$firstname);
$callToDb->bindParam(":lastname",$lastname);
$callToDb->bindParam(":email",$email);
$callToDb->bindParam(":message",$message);

if($callToDb->execute()){
return '<h3 style="text-align:center;">Thank you. We will get back to you shortly.</h3>';
}
}

if( isset($_POST['submit'])){
$firstname = htmlentities($_POST['firstname']);
$lastname = htmlentities($_POST['lastname']);
$email = htmlentities($_POST['email']);
$message = htmlentities($_POST['message']);

//then you can use them in a PHP function.
$result = saveData($firstname, $lastname, $email, $message);
echo $result;
}
else{
echo '<h3 style="text-align:center;">A very detailed error message ( ?° ?? ?°)</h3>';
}
?>