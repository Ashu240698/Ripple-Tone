<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>User Home Page</title>
</head>
</head>

<style>
body {
	background-image: url("<c:url value="/resources/images/img5.jpg"/>");
	background-size: cover;	
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

#msg1 {
	text-align: center;
	font-family: monospace;
	color: red;
	top: 5px;
	right: 500px;
	position: relative;
}

#showMusic {
	text-align: center;
	position: relative;
	top: 130px;
	left: 650px;
}

.footer {
	position: relative;
	top: 155px;
	text-align: center;
	font-size: xx-large;
	font-weight: bolder;
}

a {
	color: red;
}

table {
	border-radius: 10px;
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

#showMusic table{
	width: 250px;
}

table {
	border-radius: 10px;
}
</style>
<body>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
	<%
		if(session.getAttribute("user")==null){
			response.sendRedirect("redirect:/welcome");
		}
	%>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">Neo-Music</div>
			<div class="navbar-header"></div>
	<ul>
			<li class="right"><a href="logout"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
		<li class="right"><a href="payment"><button type="button" class="btn btn-outline-danger">Get Rippletone Plus</button></a></li>
		
		</ul>
		</div>

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
						<td><a href="music/${music.musicId}">${music.musicName}</a></td>
					<!--	<td><a href="${music.musicUrl}">${music.musicUrl}</a></td>	-->
					<!--	<td><a href="${music.musicPosterUrl}">${music.musicPosterUrl}</a></td>	-->
						<td>${music.musicAlbum}</td>
					<!--	<td>${music.musicArtist}</td>	-->
					<!--	<td><a href="/play/editPage">Edit</a></td>	-->
					<!--	<td><a href="/play/delete/${music.musicId}">Delete</a></td>	-->
					</tbody>
					</tr>
				</c:forEach>
			</table>
			</c:if>
			
			
		</form:form>
		
		<%-- <div class="footer">
		<form action="/Ripple_Tone/">
			<button class="btn btn-primary active btn-ms"><b>Go back</b></button>
		</form>
		</div> --%>
	</nav>

</body>
</html>