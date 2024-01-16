<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Status : ${requestScope.status}</h4>
	<h5 align="center">
		<spring:url var="url" value="/" />
		<a href="${url}">Back To Main</a>
	</h5>
</body>
</html>