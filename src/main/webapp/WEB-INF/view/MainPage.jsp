<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
 --%><%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/CSS/Navbar.css"/>">
<title>Main Page</title>
</head>
</head>

<style>
body {
	background-image: url("<c:url value="/resources/images/img1.jpg"/>");
	background-size: cover;
}

h1 {
	text-align: center;
}

h1 {
	text-align: center;
	font-family: fantasy;
	color: silver;
	top: 80px;
	position: relative;
}

h2 {
	text-align: center;
	font-family: monospace;
	top: 80px;
	position: relative;
}

h3 {
	text-align: center;
	font-family: monospace;
	top: -16px;
	left: 950px;
	position: relative;
}

#links {
	text-align: center;
	position: relative;
	text-align: center;
	font-size: xx-large;
	font-weight: bolder;
	top: 100px;
	color: black;
	left: 30px;
}

#link1 {
	color: orange;
}

#link2 {
	color: red;
}

.footer {
	position: relative;
	top: 155px;
	text-align: center;
	font-size: xx-large;
	font-weight: bolder;
}

.right {
	float: right;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}
</style>
<body>
	<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
	<%
		if(session.getAttribute("admin")==null){
			response.sendRedirect("redirect:/welcome");
		}
	%>
	
			
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">Neo-Music</div>
			<div class="navbar-header"></div>
			<ul>
				<li class="right"><a href="logoutadmin"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
			</ul>
		</div>
		
		<!--
		<div id="links">
			<sec:authorize access="hasRole('ADMIN')"><a id="link1" href="admin/musicPage">Add Music</a></sec:authorize>
			 <sec:authorize access="hasRole('ADMIN')"><a id="link2" href="admin/music">Show All Music</a></sec:authorize>
			 <sec:authorize access="hasRole('ROLE_USER')"><a id="link2" href="music">Show All Music</a></sec:authorize>
		</div>
		-->
		<div id="links">
			<a id="link1" href="admin/musicPage">Add Music</a> | <a id="link2" href="admin/music">Show All Music</a>
		</div>
		
		<!--
		<div class="footer">
		 <a href="/Ripple_Tone/adminhome"> <button class="btn btn-primary active btn-ms"><b>Go back</b></button></a>	  <a href="<c:url value="/logout"/>"> <button class="btn btn-primary active btn-ms"><b>Logout</b></button> </a>
		</div>
		 -->
	</nav>
</body>
</html>