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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/CSS/Navbar.css"/>">
<title>${music.musicName}</title>
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
	top: 100px;
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
	top: -100px;
	position: relative;
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
	bottom: -100px;
}

#foo #form2{
	position: relative;
	left: 15px;
}

#Addlyrics{
	position: relative;
	right: -24px;
	top: -502px; 
}

#Showlyrics{
	position: relative;
	right: -134px;
	top: -540px; 
}

#back{
	position: relative;
    right: -350px;
    top: -578px;
}

audio{
	position: relative;
	bottom: -40px;
}

.details{
	top: 90px;
}

#logout{
	position: relative;
	top: 0px;
	left: 8px;
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
			
		</div>
		
	</nav>
	<div id="songInfo">
		<h1>Song Details</h1>
		 
		<h2>
		<!--	<b>Music Id: </b> ${id}		-->
		</h2>
		<br>
		
		<h2 class="details"><b>Music Name: </b> ${music.musicName}</h2>
		<br>
		<h2 class="details"><b>Music Album: </b> ${music.musicAlbum}</h2>
		<br>
		<h2 class="details"><b>Music Artist: </b> ${music.musicArtist}</h2>
		<br>
		<h2 class="details"><b>Music URL: </b><form action="${music.musicUrl}">
			<button class="btn btn-primary active btn-ms">Go To Music</button>
		</form> </h2>
		<br>
		<h2 class="details"><b>Music Poster URL: </b> <form action="${music.musicPosterUrl}">
			<button class="btn btn-primary active btn-ms">Go To Music Poster</button>
		</form></h2>
		<br>
		<!--
		<audio preload="auto" src="<c:url value="/resources/songs/${music.musicName}.mp3"/>" type="audio/mpeg" controls="controls">

		</audio>
		-->
	<!--  <a href="${music.musicId}/editPage"> <b>Edit</b></a> | <a href="delete/${music.musicId}"><b>Delete</b> </a>  --> 
		
		<footer id="foo">
		<!--	<sec:authorize access="hasRole('ROLE_ADMIN')"> -->
				<form action="${music.musicId}/editPage" id="form1">
					<button class="btn btn-primary active btn-ms"><b>Edit</b></button>
				</form>
				
				<form action="/Ripple_Tone/logoutadmin" id="logout">
					<button class="btn btn-primary active btn-ms"><b>Logout</b></button>
				</form>
				
				<form action="delete/${music.musicId}" id="form2">
					<button class="btn btn-primary active btn-ms"><b>Delete</b></button>
				</form>
		<!--	</sec:authorize> -->
		
		<!-- 
		<form>
			<button class="btn btn-primary active btn-ms"><b>Like</b></button>
		</form>
		
		<form>
			<button class="btn btn-primary active btn-ms"><b>Comment</b></button>
		</form>
		 -->
		</footer>
	</div>
<!--	<sec:authorize access="hasRole('ROLE_ADMIN')">	-->
		<div id="Addlyrics"> 
				<c:if test="${empty music.lyrics}">
					<form action="${id}/addLyricsPage">
						<button class="btn btn-primary active btn-ms"><b>Add Lyrics</b></button>
					</form>
				</c:if>
		</div>
<!--	</sec:authorize>	-->
<!--	<sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">	-->
		<div id="Showlyrics"> 
			<form action="${id}/showLyrics">
				<button class="btn btn-primary active btn-ms"><b>Play Song & Show Lyrics</b></button>
			</form>
		</div>
<!--	</sec:authorize>	-->
	
<!--	<sec:authorize access="hasRole('ROLE_ADMIN')">	-->
		<div id="back">
		<form action="/Ripple_Tone/admin/music">
			<button class="btn btn-primary active btn-ms"><b>Go Back</b></button>
		</form>
	</div>
<!--	</sec:authorize>	-->
	
<!--	<sec:authorize access="hasRole('ROLE_USER')">	-->

<!--	</sec:authorize>	-->
</body>
</html>