<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="roster.models.Team" %>

<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<a href="/TeamRoster/newTeam">New Team</a>
		<table>
			<tr><th>Team</th><th>Players</th><th>Action</th></tr>
			<%for(int i = 0; i < Team.getTeams().size();i++){ %>
				<tr>
				<td><%= Team.getTeams().get(i).getTeam_name() %></td><td><%= Team.getTeams().get(i).getPlayers().size() %></td>
				<td><a href="/TeamRoster/teams?id=<%=i%>">Details</a>
				<a href="/TeamRoster/teams?id=<%=i%>&delete=true">Delete</a></td>
				</tr>
			<%} %>
		</table>
	</body>
</html>