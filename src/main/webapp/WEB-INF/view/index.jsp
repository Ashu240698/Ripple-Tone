<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%-- <%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<%@ page isELIgnored="false"%>
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
<title>index</title>
</head>
</head>

<style>
 body {
	background-image: url("<c:url value="/resources/images/img7.jpg"/>");
	background-size: cover;
} 

h1 {
	text-align: center;
	font-family: fantasy;
	color: silver;
	top: 10px;
    left: 10px
	position: relative;
	right: 50px;
}

#email{
	text-align: center;
	font-family: fantasy;
	color: silver;
	top: -60px;
	position: relative;
	right: 50px;
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
	left: 0px;
}

.dashboard{
	position: relative;
	top: 80px;
}

#link1{
	position: relative;
	top: 80px;
}

#logout{
	position: relative;
	top: 140px;
	right: 200px;
}
</style>
<body>
	<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">Neo-Music</div>
			<div class="navbar-header"></div>
		</div>
		
		<div id="links">
			<a href="mainPage">Admin</a> | <a href="music">User</a>
		</div>
		<!--  
		<div id="links">
			<sec:authorize access="!isAuthenticated()"><a href="<c:url value="/login"/>"><button class="btn btn-primary active btn-ms"><b>Login</b></button></a> 
			<h1 style="text-align: center; color: red; ">No User Logged in..!..Login first</h1>
			
			</sec:authorize>
			<sec:authorize access="hasRole('ADMIN')"><a class="dashboard" href="mainPage" style="color: black;">Admin Dashboard</a></sec:authorize>
			<sec:authorize access="hasRole('ROLE_USER')"><a class="dashboard" href="mainPage" style="color: green;">User Dashboard</a></sec:authorize>
			<sec:authorize access="isAuthenticated()"><a id="logout" href="<c:url value="/logout"/>"><button class="btn btn-primary active btn-ms"><b>Logout</b></button></a>
				
			</sec:authorize>			
		</div>
		-->
	</nav>
</body>
</html>