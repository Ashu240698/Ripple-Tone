<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ripple Tone</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

</head>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}

.home {
	margin-top: 8rem;
}

.space {
	padding-top: 3rem;
	color: white;
}

.space1 {
	margin-left: 2rem;
}
h1{
color: white;
}

body {
	
	background-image: url("https://i.redd.it/jqiaosn3aw651.jpg");
	background-size: cover;
	background-repeat: no-repeat;

}
.left {
	float: left;
}
.right {
	float: right;
}

li a {
	display: block;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #F9C5D5;
	
}
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

.adminName{
	color: blue;
}
</style>

<body>
	<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
	<%
		if(session.getAttribute("admin")==null){
			response.sendRedirect("redirect:/welcome");
		}
	%>

	<ul>
		<li> <h2 style="color: silver; padding: 10px;">Admin Home</h2> </li>
		<li class="right"><a href="logoutadmin"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
	</ul>


	<div class="home">
<h1 align="center">Admin Home</h1>
		<h1 align="center" class="adminName">Welcome: ${adminName}</h1>  
		<div class="d-flex justify-content-center space">
			<a href="viewuser"><button type="button" class="btn btn-info">User List</button></a>
			<a href="viewadmin"><button type="button" class="btn btn-outline-info space1">Admin List</button></a>
			<a href="mainPage"><button type="button" class="btn btn-info  space1">Music</button></a>
		</div>

	</div>
</body>
</html>