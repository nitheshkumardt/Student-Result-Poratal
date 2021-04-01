<%@page import="com.Bean.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table class="table"  align="center" border="1" cellpadding="10" id="table" >
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