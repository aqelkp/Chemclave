<?php
include_once 'includes/connection.php';
include_once 'includes/function.php';
session_start();
	

	if (isset($_POST['submit'])){
		$name = $_POST['name'];
		$password = $_POST['password'];
		$college = $_POST['college'];
		$city = $_POST['city'];
		$phone_number = $_POST['phone_number'];
		$email = $_POST['email'];
		$query = "SELECT * FROM users WHERE email = '{$email}' ";
		$user_set = mysql_query($query);
			if ($user = mysql_fetch_array($user_set)) {
				$error = 1;
			} else {
				$error = 0;
				$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			    $verification_code = substr(str_shuffle($chars),0, 10);
			    $message = "Hi {$name} \r\nClick on the folllowing link to complete you registration \r\nhttp://localhost/Chemclave_web/confirm.php?key={$verification_code}   \r\nRegards \r\nTeam Chemclave
			    ";
			    $af = "Hi";
				$message = wordwrap($message, 70, "\r\n");
				mail($email, 'Verify email address', $message);
				$query = "INSERT INTO users_temp (name, password, college, email, phone_number, city, user_key)
		 		VALUES ('{$name}', '{$password}','{$college}','{$email}', '{$phone_number}', '{$city}', '{$verification_code}'  ) ";
				$addition = mysql_query($query);
				confirm_query($addition, "Insertion");				
			}
	} 
	
?>
<html>
	<head>
		<title>Chemclave Registration</title>
	</head>
	<body>
		<form method="post" action="" validate>
			Name
			<input name="name" type="text" value="<?php echo $name; ?>" required/><br/>
			Password
			<input type="password" name="password" required/><br/>
			College
			<input type="text" name="college" value="<?php echo $college; ?>" required><br/>
			City
			<input type="text" name="city" value="<?php echo $city; ?>" required><br/>
			Phone Number
			<input type="number" name="phone_number" value="<?php echo $phone_number; ?>" required><br/>
			Email
			<input type="email" name="email" value="<?php echo $email; ?>" required>
			<?php if ($error == 1){ echo "<p style=\"color:red\"> User exist with the same email. <br/></p>";}  ?><br/>
			<input type="submit" name="submit">
			</form>
		</form>
	</body>
</html>