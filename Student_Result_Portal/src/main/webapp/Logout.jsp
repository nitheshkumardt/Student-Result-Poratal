<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assignment-6</title>
</head>
<body>
<%
session.removeAttribute("uname");
session.invalidate();
response.sendRedirect("Login.jsp");
%>
</body>
</html>