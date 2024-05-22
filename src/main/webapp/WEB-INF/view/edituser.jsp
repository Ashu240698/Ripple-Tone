<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
</head>

<style>
body {
	background-color: #22577E;
}

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
	<ul>
		<li><h2 style="color: silver; padding: 10px;">Admin Home</h2></li>
		<li class="right"><a href="/Ripple_Tone/logoutadmin"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
	</ul>


	<form:form action="editsave" modelAttribute="user">

		<h1 align="center">Edit User</h1>
		<table align="center">
			<tr>
				<td><form:hidden  path="userId" value="${id}" readonly="true"/></td>
			</tr>
			<tr>
			<tr>
				<td>Email</td>
				<td><form:input path="userEmail" value="${email}" readonly="true"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><form:errors path="userEmail"/></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><form:input path="userName" value="${name}" required="required"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><form:errors path="userName"/></td>
			</tr>
			
			<tr>
				<td>Password</td>
				<td><form:input path="userPassword" value="${password}" required="required"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><form:errors path="userPassword" /></td>
			</tr>

			<tr>
				<td>Contact No</td>
				<td><form:input path="userContact" value="${contact}" required="required"/>${contactexist}</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<form:errors path="userContact" />
			</tr>
			<tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Save"></td>
			</tr>

		</table>


	</form:form>

</body>
</html>