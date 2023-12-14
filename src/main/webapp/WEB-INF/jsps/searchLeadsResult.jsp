<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result</title>
</head>

<body>
	<p><a href="leads">new Lead</a></p>
	<h2>All Leads</h2>
	<table>
		<tr>
			
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Source</th>
			<th>Mobile</th>
		</tr>
	<c:forEach items="${leads}" var="lead">
		<tr>
			
			<td><a href="getLeadInfo?id=${lead.id}">${lead.firstName}</a></td>
			<td>${lead.lastName}</td>
			<td>${lead.email}</td>
			<td>${lead.source}</td>
			<td>${lead.mobile}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>