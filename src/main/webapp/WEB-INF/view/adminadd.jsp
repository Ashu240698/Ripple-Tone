<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
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
	background-color: #A3423C;
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
</style>


<body>

	<ul>
		<li><a href="welcome"> HOME</a></li>
		<li><a href="adminlogin">LOGIN </a></li>


	</ul>


	<form:form action="adminsignup" modelAttribute="admin" method="post">



		<div class="card1">
			<h1 align="center">Admin Signup</h1>
			<div class="d-flex justify-content-center">
				<div class="card">
					<div class="card-body">
						<table align="center">
							<!-- <tr>
								<td>Id</td>
								<td><form:input path="adminId" /></td>
							</tr> -->
							<tr>
								<td>Name</td>
								<td><form:input path="adminName" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminName" /></td>
							</tr>
							<tr>
								<td>Email</td>
								<td><form:input path="adminEmail" />${userexist}</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminEmail" /></td>
							</tr>
							<tr>
								<td>Password</td>
								<td><form:input type="password" path="adminPassword" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminPassword" /></td>
							</tr>
							<tr>
								<td>Contact No</td>
								<td><form:input path="adminContact" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminContact" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" value="Signup"></td>
							</tr>


						</table>
					</div>
				</div>
			</div>
		</div>

	</form:form>

</body>
</html>