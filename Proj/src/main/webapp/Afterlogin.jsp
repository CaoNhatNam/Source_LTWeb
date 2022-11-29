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
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="profile/login2.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
	media="screen">
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
							<div class="collapse navbar-collapse" id="navbarsExample04">
								<ul class="navbar-nav mr-auto">
									<c:if test="${sessionScope.Admin.admin==1}">
										<li class="nav-item"><a class="nav-link" href="Manager">
												Admin </a></li>
									</c:if>
									<c:if test="${sessionScope.Admin.admin==1}">
										<li class="nav-item"><a class="nav-link" href="Manager?Update">
												Update</a></li>
									</c:if>
									<li class="nav-item"><a class="nav-link" href="index.html">
											Home </a></li>
									<li class="nav-item"><a class="nav-link" href="#">About</a>
									</li>
									<li class="nav-item"><a class="nav-link" href="#">Contact
											us</a></li>
								</ul>
								<c:if test="${sessionScope.Admin.user==null}">
								<div class="sign_btn">
									<a href="login.jsp">Sign in</a>
								</div>
								</c:if>
								<c:if test="${sessionScope.Admin.user!=null}">
								<div class="user">Welcome ${sessionScope.Admin.user}</div>
								<a href="Checklogin?logout"><button >Dang xuat</button></a>
							</div>
								</c:if>

						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- end header inner -->
	<!-- end header -->
	<!-- banner -->
	<section class="banner_main">
		<div class="container">
			<div class="row d_flex">
				<div class="col-md-12">
					<div class="text-bg">
						<h1>Find Infor about car</h1>
						<strong>Free Multipurpose Responsive</strong> <span>Landing
							Page 2019</span>
						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since theLorem Ipsum is simply dummy
							text of the printing</p>
						<a href="#">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- end banner -->
	<!-- car -->
	<div class="car">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>VARIETY OF CARS</h2>
						<span>Lorem ipsum dolor sit amet, consectetur adipiscing
							elit, sed do eiusmod tempor incididunt ut labore et dolore magna</span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 padding_leri">
					<div class="car_box">
						<figure>
							<img src="images/car_img1.png" alt="#" />
						</figure>
						<h3>Hundai</h3>
					</div>
				</div>
				<div class="col-md-4 padding_leri">
					<div class="car_box">
						<figure>
							<img src="images/car_img2.png" alt="#" />
						</figure>
						<h3>Audi</h3>
					</div>
				</div>
				<div class="col-md-4 padding_leri">
					<div class="car_box">
						<figure>
							<img src="images/car_img3.png" alt="#" />
						</figure>
						<h3>Bmw x5</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end car -->
	<!-- bestCar -->
	<div id="contact" class="bestCar">
		<div class="container">
			<div class="row">
				<div class="col-md-12"></div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-md-6 offset-md-6">
							<form class="main_form" action="Infor_car" method="post">
								<div class="titlepage">
									<h2>Find Infor you Need</h2>
								</div>
								<div class="row">
									<div class="col-md-12 ">
										<input type="text" name="info"
											placeholder="Nhap ten san pham ban muon tham khao"
											class="search">
									</div>
								</div>
								<div class="col-sm-12">
									<button type="submit" class="find_btn">Find Now</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- end bestCar -->
	<!-- choose  section -->
	<div class="video">
		<video width="100%" height="240" controls autoplay="autoplay"
			loop="loop">
			<source src="VIdeo/video.mp4" type="video/mp4">
		</video>
	</div>
	<!-- end choose  section -->
	<!-- cutomer -->
	<div class="cutomer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage">
						<h2>Many other types of cars</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div id="myCarousel" class="carousel slide cutomer_Carousel "
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="container">
									<div class="carousel-caption ">
										<div class="cross_img">
											<figure>
												<img src="images/s1.png" alt="#" />
											</figure>
										</div>
										<div class="our cross_layout">
											<div class="test_box">
												<h4>Volvo S90 2022</h4>

												<p></p>
												<i><img src="images/te1.png" alt="#" /></i>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container">
									<div class="carousel-caption">
										<div class="cross_img">
											<figure>
												<img src="images/s2.png" alt="#" />
											</figure>
										</div>
										<div class="our cross_layout">
											<div class="test_box">
												<h4>Lamborghini Venano</h4>

												<p></p>
												<i><img src="images/te1.png" alt="#" /></i>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container">
									<div class="carousel-caption">
										<div class="cross_img">
											<figure>
												<img src="images/s3.png">
											</figure>
										</div>
										<div class="our cross_layout">
											<div class="test_box">
												<h4>Mercedes-Benz GLA 250</h4>

												<p></p>
												<i><img src="images/te1.png" alt="#" /></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#myCarousel" role="button"
							data-slide="prev"> <span class="carousel-control-prev-icon"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel" role="button"
							data-slide="next"> <span class="carousel-control-next-icon"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end cutomer -->
	<!--  footer -->
	<footer>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="cont_call">
							<h3>
								<strong class="multi color_chang"> Call Now</strong><br>
								(+1) 12345667890
							</h3>
						</div>
						<div class="cont">
							<h3>
								<strong class="multi"> Free Multipurpose</strong> Responsive
								Landing Page 2019
							</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="container">

					<marquee style="color: #6666FF">Cam on qui khach da tham
						quan</marquee>

				</div>
			</div>
		</div>

	</footer>
	<!-- end footer -->
	<!-- Javascript files-->
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

