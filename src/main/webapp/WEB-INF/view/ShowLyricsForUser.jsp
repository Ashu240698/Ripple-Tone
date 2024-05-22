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
<title>Show Lyrics User</title>
</head>
</head>

<style>
body {
	background-image: url("<c:url value="/resources/images/img9.jpg"/>");
	background-size: cover;
	}
	
	article{
		text-align: center;
		position: relative;
		top: 100px;
	}
h2{
	position:relative;
	top: 50px;
	text-align: center;
}

audio{
	position: relative;
	bottom: -200px;
	left: 580px;
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
		if(session.getAttribute("user")==null){
			response.sendRedirect("redirect:/welcome");
		}
	%>

	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">Neo-Music</div>
			<ul>
				<li class="right"><a href="/Ripple_Tone/logout"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
			</ul>
			<div class="navbar-header"></div>
		</div>
		<c:if test="${empty music.lyrics}"><h2>No Lyrics found </h2></c:if>
		<c:if test="${!empty music.lyrics}">
			<form:form action="${music.musicId}/showLyrics" modelAttribute="musicObj">
			<h2><b>Music Name: </b> ${music.musicName}</h2>
			<h2><b>Music Album: </b> ${music.musicAlbum}</h2>
				<article style="font-family: cursive;"> <b>${music.lyrics}</b> </article>
			</form:form>
		</c:if>
		<audio preload="auto" src="<c:url value="/resources/songs/${music.musicName}.mp3"/>" type="audio/mpeg" controls="controls"> 

		</audio>
		
		
			
			
	</nav>
</body>
</html>