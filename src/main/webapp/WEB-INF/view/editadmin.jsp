<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Signup</title>
</head>


<style>
body {
	background-color: #A3423C;
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
		<li> <h2 style="color: silver; padding: 10px;">Admin Home</h2> </li>
				<li class="right"><a href="/Ripple_Tone/logoutadmin"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
	</ul>


	<form:form action="admineditsave" modelAttribute="admin" method="post">

		<h1 align="center">Edit Admin</h1>
		<table align="center">
			<tr>
				<td></td>
				<td><form:hidden path="adminId" value="${id}" readonly="true"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="adminEmail" value="${email}" readonly="true" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><form:errors path="adminEmail" /></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><form:input path="adminName" value="${name}" required="required"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><form:errors path="adminName" /></td>
			</tr>
		
			<tr>
				<td>Password</td>
				<td><form:input path="adminPassword" value="${password}" required="required"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><form:errors path="adminPassword" /></td>
			</tr>
			<tr>
				<td>Contact No</td>
				<td><form:input path="adminContact" value="${contact}" required="required"/>${contactexist}</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><form:errors path="adminContact" /></td>
			</tr>

			<tr>

				<td><input type="submit" value="Save"></td>
			</tr>


		</table>


	</form:form>

</body>
</html>