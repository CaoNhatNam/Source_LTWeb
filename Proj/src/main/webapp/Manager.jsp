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
	<form action="Manager" method="get">
		<div>
			<div class="header"></div>
			<div class="footer">
				<table class="id" border="3">
					<tr>
						<th>User_Name</th>
						<th>Pass</th>
						<th>Email</th>
						<th>Update</th>
						<th>Delete</th>
						<th>detail</th>
					</tr>
					<c:forEach items="${manager}" var="ab">
						<tr>
							<td>${ab.user}</td>
							<td>${ab.passw}</td>
							<td>${ab.email}</td>
							<td><button type="submit">Sua</button></td>
							<td><button><a href="Delete?User=${ab.user}">Xoa</a></button></td>
							<td><button><a href="Watch?User=${ab.user}">Xem thong tin</a></button></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</form>

</body>
</html>