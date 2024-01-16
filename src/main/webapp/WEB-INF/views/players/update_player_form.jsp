<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<table style="background-color: lightgrey; margin: auto">
			<caption>Update Player Details</caption>
			<tr>
				<td>Enter Team ID</td>
				<td><input type="number" name="teamId" /></td>
			</tr>
			<tr>
				<td>Enter Player ID</td>
				<td><input type="number" name="playerId" /></td>
			</tr>
			<tr>
				<td>Enter New Batting Avg</td>
				<td><input type="number" step="0.01" name="avg" /></td>
			</tr>
			<tr>
				<td>Enter No of Wickets Taken</td>
				<td><input type="number" name="wickets" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update Player Details" /></td>
			</tr>
		</table>
	</form>
</body>
</html>