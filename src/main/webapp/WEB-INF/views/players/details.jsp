<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty requestScope.player_details}">
			<h4>Player Details : ${requestScope.player_details}</h4>
		</c:when>
		<c:otherwise>
			<h4>Status : ${requestScope.status}</h4>
		</c:otherwise>
	</c:choose>

	<h5 align="center">
		<spring:url var="url" value="/" />
		<a href="${url}">Back To Main</a>
	</h5>
</body>
</html>