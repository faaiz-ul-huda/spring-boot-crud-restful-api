<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h5>Welcome ! @ Server Time : ${requestScope.server_ts}</h5>
	<h5>
		<a href="teams/display">Display Teams Details</a>
	</h5>
	<h5>
		<a href="players/display"> Display Player Details</a>
	</h5>
	<h5>
		<a href="players/delete"> Delete Player Details</a>
	</h5>
	<h5>
		<a href="players/update"> Update Player Details</a>
	</h5>
	<h5>
		<a href="players/add"> New Player Selection</a>
	</h5>

</body>
</html>