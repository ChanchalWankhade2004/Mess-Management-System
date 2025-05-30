<?php 
	error_reporting(0);
	include 'database/Connection.php';
	include 'database/Session.php';
    Session::checkSession();
	// in member.php..... if we use  href='member_edit.php?Id=".$rows['email']."'
	// then we check as    isset( $_GET['Id'] )   .....
	
	if(isset($_GET['edit'])){
		$Id = $_GET['edit'];
		$rec = mysqli_query($conn, "SELECT * FROM member WHERE email='$Id';");
		
		$record=mysqli_fetch_array($rec);
		
		$name=$record['name'];
		$Email=$record['email'];
		$password=$record['password'];
		$phone=$record['phone'];
		$address=$record['address'];
		$room=$record['room_no'];
		
	}

		//------------UPDATE------------------------------------------------------

	if(isset($_POST['update'])){
	
		$name=$_POST['name'];
		$Email=$_POST['email'];
		$password=$_POST['password'];
		$phone=$_POST['phone'];
		$address=$_POST['address'];
		$room=$_POST['room'];

		$query=mysqli_query($conn,"update member set name='$name', email='$Email',password='$password',phone='$phone',room_no='$room',address='$address' where email='$Id'");
		if ($query) {
			
			// update also in the Manager List !!!
			
			// change password to keep different between a member & manager password
			$password+=999;
			if($password%2==0)$password+=999;
			else $password+=99;
			$q=mysqli_query($conn,"update manager set user_name='$name',email='$Email',password='$password',phone='$phone',room_no='$room' where email='$Id'");
			
			$Id=null;
			$_SESSION['status']= "<div class='alert success'>
			<span class='closebtn' onclick=\"this.parentElement.style.display='none';\">&times;</span> 
			<strong>Successfully Updated!</strong>
			</div>";
			echo "<script type = \"text/javascript\">
				window.location = (\"member.php\")
				</script>";
		}
		else{
			$_SESSION['status']= "<div class='alert'>
			<span class='closebtn' onclick=\"this.parentElement.style.display='none';\">&times;</span> 
			<strong>An Error Occurred! Please try again!</strong>
			</div>";
		}
	}

?>

<!DOCTYPE html>
<html lang="en">

<head>
		<title>Mess Solution</title>
		<link rel="icon"  href="img/logo.jpg">
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   <!-- for fontawesome -->

		 <link rel="stylesheet" href="css/w3.css"> <!--or, <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">   -->
		<link rel="stylesheet" href="css/font.css">
		
		<!-- google fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300&display=swap" rel="stylesheet">
		
		<style>
			body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
			body {font-size:16px;}
			.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
			.w3-half img:hover{opacity:1}
			.clr{
				width:100%;
				margin-top:10px;
				content:'';
				display:table;
				clear:both;
			}
			.home {
				float:left;
				background-color:green;
				color: white;
			}
			.home a{
				display: block;
				color: black;
				padding: 12px;
				text-decoration: none;
			}
				
			.logout a{
				display: block;
				color: black;
				padding: 12px;
				text-decoration: none;
			}
			.logout{
				float:right;
				color:white;
				margin-left:1px;
				background-color:red;
			}
			.img1{
				height:100px;
				width:100%;
			}
			.photo1{
				position:relative;
				text-align:center;
				color:#055aed;
			}
			.text1{
				position:absolute;
				top:30%;
				left:40%;
				
				font-size:30px;
			}

			@media screen and (max-width: 700px) {
				
				.logout{
					margin:0px;
					 width:125px;
				 }
				.active{
					 width:120px;
				 }
				.photo1{
					margin:0;

				}
	
				.img1{
					height:150px;
				}
				.text1{
					top:50%;
					left:10%;
					font-size:22px;
				}
			}   
			h3{
				position:relative;
				margin-top:0;
				margin-left:22%;
				background-color:#dcf5ba;
				height:40px;
				color:#02507a;
				text-align:center;
				padding-top:5px;
				animation:title;
				animation-duration:2s;
				animation-iteration-count:infinite;
			}
			@keyframes title{
				from {background-color:#f2f7d5;}
				to{background-color:#6f8204;}
			}
			.wrap{
				margin-left:22%;
				width:78%;
				background-color:#ecf2eb;
			}
			.wrp{
				margin-left:20px;
				height:auto;
				overflow-x:hidden;
				overflow-y:scroll;
			}
			.formmain{
				padding-left:10%;
			}
			.form-group{
				margin:7px;
			}
			.form-control{
				width:420px;
				height:38px;
				font-size:15px;
				font-weight:bold;
				border-color:#c5c7c3;
				border-radius:12px;
				border-width:3px;
			}
			.btnupdate{
				font-size:20px;
				font-weight:bold;
				color:black;
				margin-left:90px;
				margin-top:10px;
				margin-bottom:10px;
				width:120px;
				height:45px;
				border-width:3px;
				background-color:#c5c9c6;
				border:2px solid green;
				border-radius:12px;
			}
			.btnupdate:hover{
				font-size:160%;
				background-color: #4CAF50;
				color: white;
			}

			@media screen and (max-width: 700px) {
				.photo1{
					margin:0;
				}
				.wrap{
					margin:0;
					width:100%;

				}
				.wrp{
					height:400px
					margin-left:5px;
					margin-right:5px;
					overflow-x:auto;
					overflow-y:auto;
				}
				h3{
					margin:0;
					margin-bottom:15px;
				}
				.formmain{
					padding:10px;
				}
				.form-control{
					width:340px;
				}
			}
			.wrap:after{
				content:'';
				display:table;
				clear:both;
			}
			.notification {
			    position: relative;
			}

			.notification .badge {
			    position: absolute;
			    top: -5px;
			    right: 125px;
			    padding: 5px 10px;
			    border-radius: 50%;
			    background-color: red;
			    color: white;
			}
			/* footer starts from here  */
			.footer{
				background-color: #d1d1cf;
				color: black;
				padding: 10px;
				text-align: right;
				font-size: 15px;
				height:68px;

			}
			.footer::after{
				display: table;
				content: '';
				clear: both;
			}
			
					
			/* Custom Scrollbar */
			
			/* width */
			
			::-webkit-scrollbar {
				width: 15px;
			}

			/* Track */
			
			::-webkit-scrollbar-track {
				background:#f1f1f1;
			}
			 
			/* Handle */
			::-webkit-scrollbar-thumb {
				background:#b1b5b4 ;
			}

			/* Handle on hover */
			::-webkit-scrollbar-thumb:hover {
				background: #161717; 

		</style>
		
</head>
<body>

	<!-- Sidebar/menu -->
	<?php
	include('navigation.php');
	?>

	<!-- Top menu on small screens -->
	<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
	<a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
	<span>Mess Solution System</span>
	</header>

	<!-- Overlay effect when opening sidebar on small screens -->
	<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->

	<div class="photo1">
		<img class="img1"src="img/banner.jpg"  >
		<div class="text1"> 
			Welcome to Mess Solution System
		</div>
	</div>
	 
	<h3 id="start">Update Member Information</h3>
	
	<div class="wrap">
		<div class ="wrp">
			<form class="formmain" method="post" enctype="multipart/form-data">	 
				<div class="form-group">
					<label for="name"> Full Name<span style="color:red;">*</span></label>	<br>						  
					<input class="form-control"  id="name" name="name" type="text" value="<?php echo $record['name']; ?>" >				  			
				 </div>
				 
				<div class="form-group">
					<label for="email">Email<span style="color:red;">*</span></label>	<br>						  
					<input class="form-control" id="email" name="email" value="<?php echo $record['email']; ?>">
				</div>
				
				<div class="form-group">
					<label for="pwd">Given Password<span style="color:red;">*</span></label>	<br>
					<input class="form-control" id="pwd" name="password" value="<?php echo $record['password'];?>">
				</div>
				
				<div class="form-group">
					<label for="phone">Phone No.<span style="color:red;">*</span></label>	<br>						  
					<input class="form-control" id="phone" name="phone" value="<?php echo $record['phone'];?>">
				</div>
				
				<div class="form-group">
					<label for="room">Room No.<span style="color:red;">*</span></label>	<br>						  
					<input class="form-control" id="room" name="room" value="<?php echo $record['room_no'];?>">
				</div>
				
				<div class="form-group">
					<label for="address">Address<span style="color:red;">*</span></label>	<br>
					<input class="form-control" id="address" name="address" value="<?php echo $record['address']; ?>" >
				</div>
				<div class="form-group">
					<label for="joining">Joining Date<span style="color:red;">*</span></label>	<br>
					<input class="form-control" id="joining" name="joining" type="date" value="<?php echo $record['Joining_Date'];?>" >
				</div>
				<!--<button type="submit" name="save" class="btn ">Save</button>-->
				
				<button type="submit" name="update" class="btnupdate">Update</button>

			</form>	
		</div>
	</div>
	
	<div style="margin:0;padding:0;background-color:#aafaaa;height:5px;"></div>
	<div class="footer" style="background-color:#f4f5df; color:black; display:flex; 
    justify-content:center; align-items:center; position: absolute; bottom: 20px; 
    width: 100%; height: 50px; text-align: center;">
    Copyright &copy; Mess Management 2025
</div>
    <script>
		// Script to open and close sidebar
		function w3_open() {
		document.getElementById("mySidebar").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
		}

		function w3_close() {
		document.getElementById("mySidebar").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
		}

		// Modal Image Gallery
		function onClick(element) {
		document.getElementById("img01").src = element.src;
		document.getElementById("modal01").style.display = "block";
		var captionText = document.getElementById("caption");
		captionText.innerHTML = element.alt;
		}
	</script>

</body>
</html>
