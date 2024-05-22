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
<title>User Play Song</title>
</head>
</head>

<style>
body {
	background-image: url("<c:url value="/resources/images/img3.jpg"/>");
	background-size: cover;
}

h1 {
	text-align: center;
	font-family: fantasy;
	color: blue;
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

#songInfo {
	text-align: center;
	position: relative;
	top: -100px;
	padding: 0px;
}

.footer {
	position: relative;
	top: 155px;
	text-align: center;
	font-size: xx-large;
	font-weight: bolder;
}

#foo {
	color: black;
	position: relative;
	display: flex;
	left: 680px;
	bottom: -80px;
}



#Showlyrics{
	position: relative;
	right: -50px;
	top: -580px; 
}

#back{
	position: relative;
    right: -250px;
    top: -614px;
}

audio{
	position: relative;
	bottom: -70px;
}

#logout{
	position: relative;
	top: 0px;
	left: 8px;
}

#foo {
	color: black;
	position: relative;
	display: flex;
	left: 680px;
	bottom: -100px;
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
	
		</div>
	</nav>
	<div id="songInfo">
		<h1>Song Details</h1>
		 
		<h2>
			<b>Music Id: </b> ${id}
		</h2>
		<br>
		
		<h2><b>Music Name: </b> ${music.musicName}</h2>
		<br>
		<h2><b>Music Album: </b> ${music.musicAlbum}</h2>
		<br>
		<h2><b>Music Artist: </b> ${music.musicArtist}</h2>
		<br>
		<h2><b>Music URL: </b><form action="${music.musicUrl}">
			<button class="btn btn-primary active btn-ms">Go To Music</button>
		</form> </h2>
		<br>
		<h2><b>Music Poster URL: </b> <form action="${music.musicPosterUrl}">
			<button class="btn btn-primary active btn-ms">Go To Music Poster</button>
		</form></h2>
		<br>
	<!--	<audio src="<c:url value="/resources/songs/${music.musicName}.mp3"/>" type="audio/mpeg" controls="controls"></audio>  --> 
	<!--  <a href="${music.musicId}/editPage"> <b>Edit</b></a> | <a href="delete/${music.musicId}"><b>Delete</b> </a>  --> 
		
		<!--
		<footer id="foo">
			<form action="${music.musicId}/editPage">
			<button class="btn btn-primary active btn-ms"><b>Edit</b></button>
		</form>
		
		<form action="delete/${music.musicId}">
			<button class="btn btn-primary active btn-ms"><b>Delete</b></button>
		</form>
		</footer>
		--> 
		
		<footer id="foo">
				<form action="/Ripple_Tone/payment" id="form1">
					<button class="btn btn-primary active btn-ms"><b>Get Rippletone Plus</b></button>
				</form>
				
				<form action="/Ripple_Tone/logout" id="logout">
					<button class="btn btn-primary active btn-ms"><b>Logout</b></button>
				</form>
		</footer>
		
	</div>
	<div id="Showlyrics"> 
		<form action="${id}/showLyrics">
			<button class="btn btn-primary active btn-ms"><b>Show Lyrics & Play Song</b></button>
		</form>
	</div>
	
	<div id="back">
		<form action="/Ripple_Tone/music">
			<button class="btn btn-primary active btn-ms"><b>Go Back</b></button>
		</form>
	</div>





</body>
</html>