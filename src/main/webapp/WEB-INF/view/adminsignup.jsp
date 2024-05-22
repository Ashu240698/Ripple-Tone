<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
								<td><form:input path="adminName" required="required"/></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminName" /></td>
							</tr>
							<tr>
								<td>Email</td>
								<td><form:input path="adminEmail" required="required"/>${userexist}</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminEmail" /></td>
							</tr>
							<tr>
								<td>Password</td>
								<td><form:input type="password" path="adminPassword" required="required"/></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminPassword" /></td>
							</tr>
							<tr>
								<td>Contact No</td>
								<td><form:input path="adminContact" required="required"/></td>
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
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<style>
body {
	background-image: url("https://i.redd.it/jqiaosn3aw651.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background: linear-gradient(to right, #b92b27, #1565c0)
}

.card {
	margin-bottom: 20px;
	border: none
}

.box {
	width: 500px;
	padding: 40px;
	position: absolute;
	top: 50%;
	left: 50%;
	background: rgba(154, 74, 160, 0.54);
	text-align: center;
	transition: 0.25s;
	margin-top: 55px;
	margin-left: 6rem;
}

.box input[type="text"], .box input[type="password"] {
	border: 0;
	background: none;
	display: block;
	margin: 20px auto;
	text-align: center;
	border: 2px solid #3498db;
	padding: 10px 10px;
	width: 250px;
	outline: none;
	color: white;
	border-radius: 24px;
	transition: 0.25s
}

.box h1 {
	color: white;
	text-transform: uppercase;
	font-weight: 500
}

.box input[type="text"]:focus, .box input[type="password"]:focus {
	width: 300px;
	border-color: #2ecc71
}

.box input[type="submit"] {
	border: 0;
	background: none;
	display: block;
	margin: auto;
	text-align: center;
	border: 2px solid #2ecc71;
	padding: 14px 40px;
	outline: none;
	color: white;
	border-radius: 24px;
	transition: 0.25s;
	cursor: pointer
}

.box input[type="submit"]:hover {
	background: #2ecc71
}

.forgot {
	text-decoration: underline
}
.text {
color: pink;

}
.text1{
font-weight: bold;
text-decoration: none;
color: navy;
}
</style>
</head>

<body>

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="card">

						<form:form action="adminsignup" modelAttribute="admin" method="post" class="box"> 
							<h1 class="text">Admin Signup</h1>
						<p class="text">Please enter your Details!</p>
						
						<tr>
								<td><form:input path="adminName" required="required" placeholder="User name" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminName" /></td>
							</tr>
							<tr>
								<td><form:input path="adminEmail" required="required"  placeholder="Email"/>${userexist}</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminEmail" /></td>
							</tr>
							<tr>
								<td><form:input type="password" path="adminPassword" required="required" placeholder="Password"/></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminPassword" /></td>
							</tr>
							<tr>
								<td><form:input path="adminContact" required="required" placeholder="Contact no"/></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><form:errors path="adminContact" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" value="Signup"></td>
							</tr>
							
						</form:form>
				

						
						<div class="col-md-12"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>