<?php
function hashPassword($password) {
    return password_hash($password, PASSWORD_BCRYPT);
}
//Code for storing registration data for users in the database 
    $fullname = $_POST['fullname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Encrypt the password
    $hashed_password = hashPassword($password);

    //create connection
$conn = new mysqli('localhost', 'root', '', 'bpmsdb');

//check connection
if ($conn->connect_error) {
    die('Connection failed : '.$conn->connect_error);
} else{
    $stmt = $conn->prepare("insert into tbluser(FullName, Email, PhoneNumber, Username, Password)
        values(?,?,?,?,?)");
    $stmt->bind_param("ssiss", $fullname, $email, $phone, $username, $hashed_password);
    $stmt->execute();
    echo "Registartion successfylly, redirecting to login page...";
    header('refresh:3; url = ../index.php');
    $stmt->close();
    $conn->close();
}
?>