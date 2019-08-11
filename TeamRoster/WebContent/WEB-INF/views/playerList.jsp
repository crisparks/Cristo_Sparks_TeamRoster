<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="roster.models.Team" %>
 <%@ page import="roster.models.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Players</title>
	</head>
	<body>
		<% Team team = Team.getTeams().get(Integer.parseInt(request.getParameter("id"))); %>
		<p>test</p>
		<p><%=team.getTeam_name() %></p>
		<p><a href="/TeamRoster/addPlayer?id=<%=request.getParameter("id") %>">New Player</a></p>
		
		<table>
			<tr><th>First Name</th><th>Last Name</th><th>Age</th><th>Actions</th></tr>
			<%for(int i = 0; i < team.getPlayers().size(); i++ ){ %>
			<tr><td><%= team.getPlayers().get(i).getFirst_name() %></td><td><%=team.getPlayers().get(i).getLast_name() %></td><td><%=team.getPlayers().get(i).getAge() %></td><td><a href="/TeamRoster/addPlayer?team_id=<%= request.getParameter("id")%>&player_id=<%=i%>&delete=true">Delete</a></td></tr>
			<%} %>
		</table>
	</body>
</html>