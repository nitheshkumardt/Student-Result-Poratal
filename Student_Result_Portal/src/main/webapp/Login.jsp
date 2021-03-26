<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Result Portal</title>
<link rel="stylesheet" href="logincreate.css">
</head>
<body>
	<div class="login-page">
  <div class="form">
    
    <form class="login-form" action="/Student_Result_Portal/Login" method="post">
      <input type="text" placeholder="username" name="uname"/>
      <input type="password" placeholder="password" name="password"/>
      <%
		//String login_msg=(String)request.getAttribute("error");  
		//if(login_msg!=null)
		//out.println("<font-family:'Roboto'>"+login_msg+"</font>");
	%>
      <button >login</button>
      <p class="message">Not registered? <a href="Home.jsp">Create an account</a></p>
    </form>
  </div>
</div>
</body>
</html>