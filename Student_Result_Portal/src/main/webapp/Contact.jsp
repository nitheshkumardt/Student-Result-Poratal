<%@page import="com.Bean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Result Portal</title>
<link rel="stylesheet" href="ContactAbove.css">
</head>
<body>
	<%
         response.setHeader("Cache-Control","no-cache");
         response.setHeader("Cache-Control","no-store");
         response.setHeader("Pragma","no-cache");
         response.setDateHeader ("Expires", 0);
         	if(session.getAttribute("uname")==null){
         		response.sendRedirect("Login.jsp");
         	}
         %>
	<ul>
  <li><a  href="Main.jsp">Home</a></li>
  <li><a class="active" href="#contact">Contact</a></li>
  <li>   <a  href="About.jsp">About</a></li>
  <li style="float:right"><div class="dropdown">
    <button class="dropbtn"><img src=<%= Image.getImage() %>
    width="30" height="30">
    </button>
    <div class="dropdown-content">
      <a href="/Student_Result_Portal/LogOut">LogOut</a>
    </div>
  </div> </li>
  </ul>
  <div class="page">
  	<div class="detail">
  		<table>
	  		<tr>
	  			<td>Phone Number</td>
	  			<td>:</td>
	  			<td>9876543210</td>
	  		</tr>
	  		<tr>
	  			<td>Email</td>
	  			<td>:</td>
	  			<td>collagemail7@gmail.com</td>
	  		</tr>
	  		<tr>
	  			<td>Address</td>
	  			<td>:</td>
	  			<td>Collage Of Engineering</td>
	  		</tr>
	  		<tr>
	  			<td></td>
	  			<td></td>
	  			<td>Avinashi,Tirupur</td>
	  		</tr>
  		</table>
 	 </div>
  </div>
</body>
</html>