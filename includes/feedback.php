<?php
//Code for storing registration data for users in the database 
    $fullname = $_POST['fullname'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $rating = $_POST['rating'];
    $comment = $_POST['comment'];

    //create connection
$conn = new mysqli('localhost', 'root', '', 'bpmsdb');

//check connection
if ($conn->connect_error) {
    die('Connection failed : '.$conn->connect_error);
} else{
    $stmt = $conn->prepare("insert into tblreview( FullName, PhoneNumber, Email, Rating, Comment)
        values(?,?,?,?,?)");
    $stmt->bind_param("sisss", $fullname, $phone, $email, $rating, $comment);
    $stmt->execute();
    echo "Feedback Submitted Succesfully, please wait as we redirect to Home page....";
    header('refresh:1; url = ../home.php');
    $stmt->close();
    $conn->close();
}
?>