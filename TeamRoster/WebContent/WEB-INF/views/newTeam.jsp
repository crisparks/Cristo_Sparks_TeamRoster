<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>New Team</title>
	</head>
	<body>
		<p>Create new team</p>
		<form action= "/TeamRoster/newTeam" method="post"><p>Team Name: <input type="text" name="team_name"></p>
		<button>Create</button></form>
	</body>
</html>