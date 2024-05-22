<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>


<style>
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


body {
	background-color: #22577E;
}

p {
	color: white;
	margin-top: 2rem
}

h1 {
	color: white;
	margin-bottom: 2rem
}

.card {
	background-color: #F05454;
	color: white;
}

.card1 {
	margin-top: 7rem;
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


<body align="center">
	<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>
	<%
		if(session.getAttribute("admin")==null){
			response.sendRedirect("redirect:/adminlogin");
		}
	%>
	
	<ul>
		<li><a href="adminhome">ADMIN HOME</a></li>
		<li><a href="viewuser">USER LIST</a></li>
		<li class="right"><a href="logoutadmin"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
	</ul>


	<form:form action="adduserprocess" modelAttribute="user" method="post">



		<div class="card1">
			<h1 align="center">Add User</h1>
			<div class="d-flex justify-content-center">
				<div class="card">
					<div class="card-body">
						<table>
							<!-- <tr>
								<td>Id</td>
								<td><form:input path="userId" /></td>
							</tr> -->
							<tr>
								<td>Name</td>
								<td><form:input path="userName" required="required"/></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="userName" required="required"/></td>
							</tr>
							<tr>
								<td>Email</td>
								<td><form:input path="userEmail" /> ${userexist}</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="userEmail" /></td>
							</tr>

							<tr>
								<td>Password</td>
								<td><form:input type="password" path="userPassword" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="userPassword" /></td>
							</tr>

							<tr>
								<td>Contact No</td>
								<td><form:input path="userContact" required="required"/>${contactexist}</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="userContact" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" value="Save"></td>
							</tr>


						</table>
					</div>
				</div>
			</div>
		</div>

	</form:form>

</body>
</html>