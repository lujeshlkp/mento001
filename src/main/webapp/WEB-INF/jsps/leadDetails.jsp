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
	<h2>Lead Details</h2>
	
	First Name:${lead.firstName}<br/>
	Last Name:${lead.lastName}<br/>
	Email:${lead.email}<br/>
	Source:${lead.source}<br/>
	Mobile:${lead.mobile}<br/>
	<form action="convertLead" method="post">
	<input type="hidden" name="id" value="${lead.id}"/>
	<input type="submit" value="convert"/>
	</form>
	<form action="sendEmail" action="post">
	<input type="hidden" name="email" value="${lead.email}"/>
	<input type="submit" value="send email"/>
	</form>
</body>
</html>