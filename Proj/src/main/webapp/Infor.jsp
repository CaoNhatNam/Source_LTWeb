<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<link rel="stylesheet" href="./profile/Man.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="Watch" method="get">
	
		<div>${sessionScope.User.user}</div>
		<div>${sessionScope.User.passw}</div>
		<div>${sessionScope.User.email}</div>


	
	</form>

</body>
</html>