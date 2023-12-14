<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ include file="menu.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p><a href="leads">new Lead</a></p>
	<h2>All Contact</h2>
	<table>
		<tr>
			
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Source</th>
			<th>Mobile</th>
		</tr>
	<c:forEach items="${contacts}" var="contact">
		<tr>
			
			<td><a href="getContactInfo?id=${contact.id}">${contact.firstName}</a></td>
			<td>${contact.lastName}</td>
			<td>${contact.email}</td>
			<td>${contact.source}</td>
			<td>${contact.mobile}</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>