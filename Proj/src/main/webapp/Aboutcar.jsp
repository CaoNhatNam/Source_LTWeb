<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
 <%@page import="javax.websocket.Session"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>rento</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<!-- style css -->
<link rel="stylesheet" href="profile/Css.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->

<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->


</head>
<!-- body -->
<body class="main-layout">
	<!-- loader  -->
	<div class="loader_bg">
		<div class="loader">
			<img src="images/loading.gif" alt="#" />
		</div>
	</div>
	<!-- end loader -->
	<!-- header -->
	<header>
		<!-- header inner -->
		<div class="header">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
						<div class="full">
							<div class="center-desk">
								<div class="logo">
									<a href="index.html"><img src="images/logo.png" alt="#" /></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
						<nav class="navigation navbar navbar-expand-md navbar-dark ">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarsExample04"
								aria-controls="navbarsExample04" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<form action="Checklogin" method="post">
							<div class="collapse navbar-collapse" id="navbarsExample04">
								<ul class="navbar-nav mr-auto">

									<li class="nav-item"><a class="nav-link" href="Manager.jsp">
											Admin </a></li>
									<li class="nav-item"><a class="nav-link" href="index.html">
											Home </a></li>
									<li class="nav-item"><a class="nav-link" href="#">About</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Contact
											us</a></li>
								</ul>
								<div class="user" >Welcome ${User}</div>
								<a href="Checklogin?logout"><button>Dang xuat</button></a>
							</div>
					</form>
					</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- end header inner -->

	<!-- car -->
	<form action="Infor_car" method="get">
		<c:forEach items="${lists}" var="car">
			<div class="carbg">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div id="page">
								<div class="name"><h3>${car.name}</h3></div>
								<div  class="imga"><img alt="" src="${car.image}" ></div>
								<div  class="year"><h4>Sx nam: ${car.nam} </h4></div>
								<div  class="gia"><h4>Gia: ${car.cost}</h4></div>
								<div  class="soluong"><h4>So luong cho ngoi: ${car.soluong}</h4></div>






							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</form>
	<!-- end car -->
	
	<!-- choose  section -->


	<script src="js/jquery.min.js"></script>
	<script src="js/checklogin.js"></script>

	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/jquery-3.0.0.min.js"></script>
	<script src="js/plugin.js"></script>
	<!-- sidebar -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="js/custom.js"></script>
	<script
		src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
</body>
</html>

