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
<title>Home Page</title>
</head>
</head>

<style>
body {
	background-image: url("<c:url value="/resources/images/img5.jpg"/>");
	background-size: cover;
}

h1 {
	text-align: center;
	font-family: fantasy;
	color: fuchsia;
	top: 100px;
	position: relative;
}

h2 {
	text-align: center;
	font-family: monospace;
	top: 80px;
	position: relative;
}

#msg1 {
	text-align: center;
	font-family: monospace;
	color: red;
	top: 5px;
	right: 500px;
	position: relative;
}


h3 {
	text-align: center;
	font-family: monospace;
	top: -16px;
	left: 950px;
	position: relative;
}

#showMusic {
	text-align: center;
	position: relative;
	top: 130px;
	left: 645px;
}

#showMusic table{
	width: 250px;
}

.footer {
	position: relative;
	top: 400px;
	text-align: center;
	font-size: xx-large;
	font-weight: bolder;
	left: 30px;
}

a {
	color: red;
}

.footer a {
	color: black;
}

table {
	border-radius: 10px;
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
			<ul>
				<li class="right"><a href="/Ripple_Tone/logoutadmin"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
			</ul>
			<div class="navbar-header"></div>
		</div>
	
		<h1>Welcome to the Home Page</h1>

		<form:form action="music" modelAttribute="musicObj" id="showMusic">
			<c:if test="${empty musicList}"><h2 id="msg1">${msg}</h2></c:if>
			<c:if test="${!empty musicList}">
				<table class="table table-dark">
				<thead class="table-dark">
				<tr>
				 <!-- 	<th>MusicID</th> -->
					<th>MusicName</th>
				<!--	<th>MusicUrl</th>	-->
				<!--	<th>MusicPosterUrl</th>	-->
					<th>MusicAlbum</th>
				<!--	<th>MusicArtist</th>	-->
				<!--	<th>Edit Music</th>		-->
				<!--	<th>Delete Music</th>	-->
				</tr>
				</thead>
				<c:forEach items="${musicList}" var="music">
				<tbody>
					<tr>
					<!--	<td>${music.musicId}</td>  -->
						<sec:authorize access="hasRole('ROLE_USER') or hasRole('ROLE_ADMIN')"><td><a href="music/${music.musicId}">${music.musicName}</a></td></sec:authorize>
					<!--	<td><a href="${music.musicUrl}">${music.musicUrl}</a></td>	-->
					<!--	<td><a href="${music.musicPosterUrl}">${music.musicPosterUrl}</a></td>	-->
						<td>${music.musicAlbum}</td>
					<!--	<td>${music.musicArtist}</td>	-->
					<!--	<td><a href="/play/editPage">Edit</a></td>	-->
					<!--	<td><a href="/play/delete/${music.musicId}">Delete</a></td>	-->
					</tr>
				</tbody>
				</c:forEach>
			</table>
			</c:if>
		</form:form>
		</nav>
		<div class="footer">
		<form action="musicPage">
			<button class="btn btn-primary active btn-ms"><b>Add more songs</b></button>
		</form>
		</div>
	

</body>
</html>