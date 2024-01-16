<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table style="background-color: lightgrey; margin: auto">
		<caption>All Teams</caption>
		<tr>
			<th>Team ID</th>
			<th>Owner</th>
			<th>Max Age</th>
			<th>Min Batting Avg</th>
			<th>Min Wickets Taken</th>
		</tr>
		<c:forEach var="t" items="${requestScope.team_list}">
			<tr>
				<td>${t.id}</td>
				<td>${t.owner}</td>
				<td>${t.maxAge}</td>
				<td>${t.minBattingAvg}</td>
				<td>${t.minWicketsTaken}</td>
			</tr>
		</c:forEach>
	</table>
	<h5 align="center">
		<spring:url var="url" value="/" />
		<a href="${url}">Back To Main</a>
	</h5>
</body>
</html>