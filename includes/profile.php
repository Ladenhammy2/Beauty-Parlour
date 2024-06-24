<?php
session_start();
include('dbconnection.php');

$stmt = $con->prepare("SELECT username, email FROM tbluser WHERE id = ?");
$stmt->bind_param("i", $id);
$stmt->execute();
$stmt->bind_result($username, $email);
$stmt->fetch();
$stmt->close();
$con->close();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
</head>
<body>
    <h2>Profile</h2>
    <p>Username: <?php echo htmlspecialchars($username); ?></p>
    <p>Email: <?php echo htmlspecialchars($email); ?></p>
    <a href="logout.php">Logout</a>
</body>
</html>
