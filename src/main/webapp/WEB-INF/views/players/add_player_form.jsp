<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Selection Form</title>
</head>

<body>

	<form:form method="post" modelAttribute="player">
		<table style="background-color: lightgrey; margin: auto">
			<caption>Player Selection</caption>
			<tr>
				<td>Choose Team</td>
				<td><select name="teamId">
						<c:forEach var="t" items="${requestScope.team_list}">
							<option value="${t.id}">${t.abbreviation}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td>Enter Player First Name</td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td>Enter Player Last Name</td>
				<td><form:input path="lastName" /></td>
			</tr>
			<tr>
				<td>Enter Player Email</td>
				<td><form:input type="email" path="email" /></td>
			</tr>
			<tr>
				<td>Enter DoB</td>
				<td><form:input type="date" path="dob" /></td>
			</tr>
			<tr>
				<td>Enter Batting Average</td>
				<td><form:input type="number" step="0.01" path="battingAvg" /></td>
			</tr>
			<tr>
				<td>No Of Wickets Taken</td>
				<td><form:input type="number" path="wicketsTaken" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add A Player" /></td>
			</tr>

		</table>
	</form:form>
	
</body>
</html>