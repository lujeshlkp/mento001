<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<body>
	<h2>contact Details</h2>
	
	First Name:${contacts.firstName}<br/>
	Last Name:${contacts.lastName}<br/>
	Email:${contacts.email}<br/>
	Source:${contacts.source}<br/>
	Mobile:${contacts.mobile}<br/>
	
	<form action="sendEmail" action="post">
	<input type="hidden" name="email" value="${contacts.email}"/>
	<input type="submit" value="send email"/>
	</form>
</body>
</html>