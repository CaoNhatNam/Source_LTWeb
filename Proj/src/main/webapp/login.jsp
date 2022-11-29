<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Classic Login Form Example</title>
<link href="https://fonts.googleapis.com/css?family=Assistant:400,700"
	rel="stylesheet">
<link rel="stylesheet" href="./profile/login.css">

</head>
<body>
	<c:url var="lg" value="Checklogin" />
	<section class='login' id='login'>
		<div class='head'>
			<h1 class='company'>Login_Account</h1>
		</div>
		<p class='msg'>Hello</p>
		<div class='form'>
			<form action="${lg}" method="post">
				<input type="text" placeholder='Username' class='text' id='username'
					required name="User">
					<br> 
					<input type="password"placeholder='passs' class='password' id="pw" name="pass">
					<br>
					
				<button type="submit" class="btn-login">Login</button>
				<a href="Signup.jsp" class='forgot'>Sign_up</a>
			</form>
		</div>
	</section>


</body>
</html>
