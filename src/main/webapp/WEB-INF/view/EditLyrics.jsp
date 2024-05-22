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
<title>Edit Lyrics</title>
</head>
</head>

<style>
body {
	background-image: url("<c:url value="/resources/images/img11.jpg"/>");
	background-size: cover;
}
form{
	position: relative;
	top: 100px;
	left:100px;
	padding: 10px;
}
input {
	border-radius: 10px;
	width: 300px;
	height: 30px;
}

table {
	text-align: center;
	position: relative;
	left: 214px;
}

#id1{
	width: 400px;
}

#input1{
	position: relative;
	height: 40px;
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

		<form:form action="lyrics/edit" modelAttribute="musicObj" id="lyricsForm">
				<table>  
					<tr>
						<td><form:hidden path="musicId" readonly="true" value="${id}" /></td>
					</tr>
					<tr id="input1">
						<td><form:label path="musicName">Music Name</form:label></td>
						<td><form:input path="musicName" readonly="true" value="${music.musicName}" /></td>
						<td><form:errors path="musicName" cssClass="error" /></td>
					</tr>
					<tr id="txt">
						<td><form:label path="lyrics">Lyrics</form:label></td>
						<td><textarea name="lyrics" form="lyricsForm" rows="15" cols="100" placeholder="Write your lyrics here" required="required">${music.lyrics}</textarea></td>
					</tr>
					<tr>
						<td><form:hidden path="musicUrl" value="${music.musicUrl}"/></td>
					</tr>
					<tr>
						<td><form:hidden path="musicPosterUrl" value="${music.musicPosterUrl}"/></td>
					</tr>
					<tr>
						<td><form:hidden path="musicAlbum" value="${music.musicAlbum}"/></td>
					</tr>
					<tr>
						<td><form:hidden path="musicArtist" value="${music.musicArtist}"/></td>
					</tr>
					<tr>
						<td colspan="10"><form:button id="btn" name="Submit">Edit Lyrics</form:button>
						</td>
					</tr>
				</table>
			</form:form>
			
			
	</nav>
</body>
</html>