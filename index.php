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
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <div class="login-container">
      <form class="login-form" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <h2>Login</h2>
        <div class="input-group">
          <label>Username:</label>
          <input type="text" name="username" required>
        </div>
        <div class="input-group">
          <label>Password:</label>
          <input type="password" name="password" required>
        </div>
        <?php if (isset($login_error)) echo "<div class='error'>$login_error</div>"; ?>
        <button type="submit">Login</button>
        <div class="forgot-password">
          <a href="register.php">Register Now</a> | <a href="admin/index.php">Admin Login</a>
        </div>
      </form>
    </div>
</body>
</html>
