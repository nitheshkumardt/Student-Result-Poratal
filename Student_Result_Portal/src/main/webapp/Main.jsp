<%@page import="com.Bean.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Result Portal</title>
<link rel="stylesheet" href="Main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="Contact.jsp">Contact</a></li>
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
  <br><br><br><br>
<table align="center" cellpadding="10">
  	<tr>
	  	<td style="background-color: #808080">Name</td>
	  	<td style="background-color: #acb3ae">:</td>
	  	<td style="background-color: #c0c0c0"><%= StudentDetail.getName() %></td>
  	</tr>
  	<tr>
	  	<td style="background-color: #808080">Roll Number</td>
	  	<td style="background-color: #acb3ae">:</td>
	  	<td style="background-color: #c0c0c0"><%= StudentDetail.getRoll_number() %></td>
  	</tr>
  	<tr>
	  	<td style="background-color: #808080">Programme</td>
	  	<td style="background-color: #acb3ae">:</td>
	  	<td style="background-color: #c0c0c0"><%= StudentDetail.getProgramme() %></td>
  	</tr>
  	<tr>
	  	<td style="background-color: #808080">Branch</td>
	  	<td style="background-color: #acb3ae">:</td>
	  	<td style="background-color: #c0c0c0"><%= StudentDetail.getBranch() %></td>
  	</tr>
  	<tr>
	  	<td style="background-color: #808080">Month & Year of Exam</td>
	  	<td style="background-color: #acb3ae">:</td>
	  	<td style="background-color: #c0c0c0">March-2021</td>
  	</tr>
  </table>
  <br><br><br><br>
  <div class="center">
    <button  id="load">Load Mark Sheet</button>
  </div>
	<div id="result"></div>
  
  	
<script type="text/javascript">
	$(document).ready(function(){
		$('.center').on('click','button#load',function(){
			$.ajax('Student_Result.jsp')
				.done(function(response){
					$('#result').html(response);
				});
		});
	});

</script>
  
</body>
</html>