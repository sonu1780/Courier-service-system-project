<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>

header {
	padding-top: 50px;
	width: 100%;
	background-color:black;
    display:block;
    overflow:hidden;
}

nav {
	width:100%; height: 15vh;
	background-color: black;
	color: white;  display:flex; justify-content: space-between;
	align-items: center; text-transform: uppercase; 
}

nav .logo{
	align-items: left;
	text-align: left;
    width: 25%;
    margin-left: 90px;
    margin-top: -30px;
    
}      

nav .menu{
	width: 40%; 
	display: flex; justify-content: space-around; 
}

nav .menu a{
	text-decoration: none; 
	color: white;
    font-weight: bold;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  	width:100%; 
	background-color: black;
	color: #00b894;  
	display:flex;
	margin-right: 30px; 
	justify-content: space-between;
	align-items: center; 
	text-transform: uppercase;
	font-family: Times New Roman;
	font-size: 17px;
	font-weight: bold;
	cursor: pointer;
	padding-bottom: 10px;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 120px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

</style>
</head>
<body>
<%
String name = "";
HttpSession sess = request.getSession(false);
if (sess == null) {
	out.println("<script>");
	out.println("alert('Customer not logged in.\nPlease login first!');");
	out.println("window.location.href='index.html';");
	out.println("</script>");
}
else {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql", "root", "#include");
		String query = "select name from profile where username=?";
		PreparedStatement pstmt = conn.prepareStatement(query);
		pstmt.setString(1, sess.getAttribute("username").toString());
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		name = rs.getString(1);
	}
	catch (Exception e) {
		out.println("<script>");
		out.println("alert('Customer not logged in.\\nPlease login first!');");
		out.println("window.location.href='index.html';");
		out.println("</script>");
	}
%>
<header>		
	<nav>
		<div class="logo"><img alt="this is logo" src="icon.jpg" width="150" height="90"> </div>
        <div class="menu">
        	<a href="customerbooking.jsp">Home</a>
        	<a href="customerabout.jsp">About us</a>
        	<a href="contactus.html">contact us</a>
        	<div class="dropdown">
			    <div class="dropbtn"><%= name %>&NoBreak; &#9660; 
			    	<i class="fa fa-caret-down"></i>
			    </div>
			    <div class="dropdown-content">
			    <a href="#" style="color:#00b894;">View profile</a>
			      	<a href="LogoutServlet" style="color:#00b894;">Log Out</a>
			    </div>
			</div> 
        </div>
    </nav>
</header>
<%
}
%>
</body>
</html>