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
  <li><a  href="Contact.jsp">Contact</a></li>
  <li><a class="active"  href="#about">About</a></li>
  <li style="float:right"><div class="dropdown">
    <button class="dropbtn"><img src="https://www.clipartkey.com/mpngs/m/146-1461473_default-profile-picture-transparent.png"
    width="30" height="30">
    </button>
    <div class="dropdown-content">
      <a href="Logout.jsp">LogOut</a>
    </div>
  </div> </li>
  </ul>
  <div class="page">
	  <div class="detail">
	  		<a>It is simple WebSite.</a>
	  		<a>It Shows the Student Result</a>
	  		<a>Based On their LogIn.</a>
	  </div>
  </div>
</body>
</html>