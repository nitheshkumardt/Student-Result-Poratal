<%@page import="com.Bean.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Result Portal</title>
<link rel="stylesheet" href="Main.css">
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
    <button class="dropbtn"><img src="https://www.clipartkey.com/mpngs/m/146-1461473_default-profile-picture-transparent.png"
    width="30" height="30">
    </button>
    <div class="dropdown-content">
      <a href="Logout.jsp">LogOut</a>
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
  	<table class="table"  align="center" border="1" cellpadding="10"  >
  		<caption><h3>Result</h3></caption>
  		<tr style="background:  #00ff40">
	  		<th>Sem No</th>
	  		<th>Course Code</th>
	  		<th>Course Name</th>
	  		<th>Credits</th>
	  		<th>Grade Point</th>
	  		<th>Grade Letter</th>
  		</tr>
  		<tr>
	  		<td>6</td>
	  		<td><%= CourseId.getCourse1() %></td>
	  		<td><%= CourseName.getCourse1() %></td>
	  		<td><%= CourseCredit.getCourse1() %></td>
	  		<td><%= GradePoint.getCourse1() %></td>
	  		<td><%= GradeLetter.getCourse1() %></td>
  		</tr>
  		<tr>
	  		<td>6</td>
	  		<td><%= CourseId.getCourse2() %></td>
	  		<td><%= CourseName.getCourse2() %></td>
	  		<td><%= CourseCredit.getCourse2() %></td>
	  		<td><%= GradePoint.getCourse2() %></td>
	  		<td><%= GradeLetter.getCourse2() %></td>
  		</tr>
  		<tr>
	  		<td>6</td>
	  		<td><%= CourseId.getCourse3() %></td>
	  		<td><%= CourseName.getCourse3() %></td>
	  		<td><%= CourseCredit.getCourse3() %></td>
	  		<td><%= GradePoint.getCourse3() %></td>
	  		<td><%= GradeLetter.getCourse3() %></td>
  		</tr>
  		<tr>
	  		<td>6</td>
	  		<td><%= CourseId.getCourse4() %></td>
	  		<td><%= CourseName.getCourse4() %></td>
	  		<td><%= CourseCredit.getCourse4() %></td>
	  		<td><%= GradePoint.getCourse4() %></td>
	  		<td><%= GradeLetter.getCourse4() %></td>
  		</tr>
  		<tr>
	  		<td>6</td>
	  		<td><%= CourseId.getCourse5() %></td>
	  		<td><%= CourseName.getCourse5() %></td>
	  		<td><%= CourseCredit.getCourse5() %></td>
	  		<td><%= GradePoint.getCourse5() %></td>
	  		<td><%= GradeLetter.getCourse5() %></td>
  		</tr>
  	</table>

  
</body>
</html>