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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXhW+ALEwIH" crossorigin="anonymous">
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        padding: 0;
      }
    </style>
</head>
<body class="bg-light d-flex align-items-center justify-content-center" style="min-height:100vh;">
    <div class="login-container shadow p-4 bg-white rounded" style="width:350px;">
      <?php if (isset($register_error)) echo "<div class='alert alert-danger text-center py-2'>$register_error</div>"; ?>
      <form class="login-form" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <h2 class="text-center mb-4">Register</h2>
        <div class="mb-3">
          <label for="fullname" class="form-label">Full Name:</label>
          <input type="text" id="fullname" name="fullname" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email:</label>
          <input type="email" id="email" name="email" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="phone" class="form-label">Phone Number:</label>
          <input type="text" id="phone" name="phone" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="username" class="form-label">Username:</label>
          <input type="text" id="username" name="username" class="form-control" required>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password:</label>
          <input type="password" id="password" name="password" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">Register</button>
        <div class="forgot-password mt-3 text-center">
          <a href="index.php">Login Now</a> | <a href="admin/index.php">Admin Login</a>
        </div>
      </form>
    </div>
</body>
</html>
