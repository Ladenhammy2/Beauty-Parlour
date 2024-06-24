<?php
session_start();
require_once('includes/dbconnection.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Prepare SQL statement to retrieve hashed password for the provided username
    $sql = "SELECT username, password FROM tbluser WHERE username = ?";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        // Username exists, fetch the hashed password
        $row = $result->fetch_assoc();
        $hashed_password = $row['password'];

        // Verify the password
        if (password_verify($password, $hashed_password)) {
            // Password is correct, start a new session
            $_SESSION['username'] = $username;
            $_SESSION['loggedin'] = true;
            // Redirect to home page or dashboard
            header("Location: home.php");
            exit;
        } else {
            // Incorrect password
            $login_error = "Incorrect username or password";
        }
    } else {
        // Username not found
        $login_error = "Incorrect username or password";
    }

    // Close statement and connection
    $stmt->close();
    $con->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BEAUTY PARLOUR MANAGEMENT SYSTEM | USER LOGIN</title>
    <style>
      body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  justify-content: center;
  align-items: center;
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
input[type="text"], input[type="password"] {
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
@media (max-width: 600px) {
            form {
                padding: 15px;
                border-width: 3px;
            }
            input[type="text"], input[type="password"], input[type="submit"] {
                font-size: 12px;
                padding: 8px;
            }
            h2 {
                font-size: 18px;
            }
        }

        @media (max-width: 400px) {
            form {
                padding: 10px;
                border-width: 2px;
            }
            input[type="text"], input[type="password"], input[type="submit"] {
                font-size: 10px;
                padding: 6px;
            }
            h2 {
                font-size: 16px;
            }
        }
    </style>
</head>
<body>

    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
    <h2>Login</h2>
    <p style="font-size:16px; color:red" align="center"> <?php if (isset($login_error)) echo "<p>$login_error</p>"; ?> </p>
        <label>Username:</label>
        <input type="text" name="username" required><br><br>
        <label>Password:</label>
        <input type="password" name="password" required><br><br>
        <input type="submit" value="Login">
        <div class="options">
    <div class="options">
      <a href="register.php">Register Now</a> | <a href="admin/index.php">Admin Login</a>
    </div>
    </form>
</body>
</html>
