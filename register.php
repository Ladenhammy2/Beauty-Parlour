<?php
session_start();
require_once('includes/dbconnection.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fullname = $_POST['fullname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Hash password

    $sql = "INSERT INTO tbluser (FullName, Email, PhoneNumber, Username, Password) VALUES (?, ?, ?, ?, ?)";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("ssiss",$fullname, $email, $phone, $username, $password);

    if ($stmt->execute()) {
        // Registration successful
        $_SESSION['username'] = $username;
        $_SESSION['loggedin'] = true;
        echo "Regestration Successfully, please login......";
        header("Location: index.php");
        exit;
    } else {
        // Registration failed
        $register_error = "Registration failed. Please try again.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BEAUTY PARLOUR MANAGEMENT SYSTEM | USER REGISTER</title>
    <style>
      body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  padding: 250px;
}
h2 {
  text-align: center;
  color: #333;
}
form {
  max-width: 300px;
  margin: 0 auto;
  background: #fff;
  padding: 60px;
  border: 5px solid #ddd;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
}
label {
  display: block;
  margin-bottom: 10px;
}
input[type="text"], input[type="password"], input[type="email"] {
  width: calc(100% - 20px);
  padding: 8px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 3px;
  font-size: 14px;
}
input[type="submit"] {
  width: 100%;
  padding: 10px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  font-size: 16px;
}
input[type="submit"]:hover {
  background-color: #0056b3;
}
.error {
  color: red;
  margin-bottom: 10px;
}
.options {
  margin-top: 10px;
  font-size: 14px;
}
.options a {
  text-decoration: none;
  color: #007bff;
}
.options a:hover {
  text-decoration: underline;
}
    </style>
</head>
<body>
    <?php if (isset($register_error)) echo "<p>$register_error</p>"; ?>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <h2>Register</h2>
    <div class="input-group">
        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" required>
      </div>

      <div class="input-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>

      <div class="input-group">
        <label for="phone">Phone Number:</label>
        <input type="text" id="phone" name="phone" required>
      </div>

      <div class="input-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
      </div>

      <div class="input-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
      </div>
        <input type="submit" value="Register">
    <div class="options">
      <a href="index.php">Login Now</a> | <a href="admin/index.php">Admin Login</a>
    </div>
    </form>
</body>
</html>
