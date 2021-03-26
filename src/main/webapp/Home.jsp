<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="test.css">
</head>
<body>
	<ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#contact">Contact</a></li>
  <li>   <a  href="#about">About</a></li>
  <li style="float:right"><div class="dropdown">
    <button class="dropbtn"><img src="https://www.clipartkey.com/mpngs/m/146-1461473_default-profile-picture-transparent.png"
    width="30" height="30">
    </button>
    <div class="dropdown-content">
      <a href="Logout.jsp">LogOut</a>
    </div>
  </div> </li>
  </ul>
</body>
</html>