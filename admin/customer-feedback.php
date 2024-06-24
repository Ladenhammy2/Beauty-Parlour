    <?php
        session_start();
        error_reporting(0);
        include('includes/dbconnection.php');
    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <!-- font CSS -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet"> 
    <!-- //font-awesome icons -->
    <!-- js-->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    <!--webfonts-->
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <!--//webfonts--> 
    <!--animate-->
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>
    <!--//end-animate-->
    <!-- Metis Menu -->
    <script src="js/metisMenu.min.js"></script>
    <script src="js/custom.js"></script>
    <link href="css/custom.css" rel="stylesheet">
    <!--//Metis Menu -->
    <title>BEAUTY PARLOUR | Customer Feedback</title>
    <style>
        body { 
            margin: 3rem; 
            padding-left: 14%;
        }
        .cont{
            padding-top: 1%;
        }
        table { 
        border-collapse: collapse; 
        margin-bottom: 20px; 
        width: 100%; 
        } 
  
        th, 
        td { 
            border: 1px solid #ddd; 
            padding: 8px; 
            text-align: left; 
        } 
  
        th { 
            background-color: #4CAF50; 
            color: #fff; 
        } 
    </style>
</head>
<body class="cbp-spmenu-push">
   <div class="main-content">
    <!--left-fixed -navigation-->
		 <?php include_once('includes/sidebar.php');?>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
	 <?php include_once('includes/header.php');?>
		<!-- //header-ends -->
		<!-- main content start-->
         <div class="page-wraapper">
    <h1 style ="text-align: center; padding-top: 4%;"><b>Customer Reviews</b></h1>
    <div class="cont">
    <table id = "outputTable"> 
        <tr> 
            <th>ID</th>
            <th>Full Name</th> 
            <th>Phone Number</th>
            <th>Email Address</th>
            <th>Rating</th> 
            <th>Comments</th> 
        </tr> 
        <?php
            $conn = mysqli_connect("localhost", "root", "", "bpmsdb");
            if ($con-> connect_error) {
                die("Connection failed:". $con-> connect_error);
            }

            $sql = "SELECT ID, FullName, PhoneNumber, Email, Rating, Comment, Rating from tblreview";
            $result = $con-> query($sql);

            if ($result-> num_rows > 0) {
                while ($row = $result-> fetch_assoc()) {
                    echo 
                        "<tr>
                            <td>". $row["ID"]. "</td>
                            <td>". $row["FullName"]. "</td>
                            <td>". $row["PhoneNumber"]. "</td>
                            <td>". $row["Email"]. "</td>
                            <td>". $row["Rating"]. "</td>
                            <td>". $row["Comment"]. "</td>
                        </tr>";           
                 }
                 echo "</table>";
            } else{
                echo "0 result";
            }
            $con-> close();
        ?>
    </table>
    </div>
    </div>
    <?php include_once('includes/footer.php');?>
    </div>
    <!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
</body>
</html>
