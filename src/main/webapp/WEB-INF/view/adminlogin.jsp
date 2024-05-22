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
	margin-top: 100px;
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
	margin: 20px auto;
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

						<form:form action="adminProcess" modelAttribute="admin"
							method="get" class="box">
							<h1 class="text">Admin Login</h1>
						<p class="text">Please enter your login and password!</p>
							<tr>
								<td><form:input placeholder="Enter Email" path="adminEmail"
										required="required" class="form-control" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>${adminnotfound}</td>
							</tr>
							<tr>

								<td><form:input placeholder="Enter Password"
										type="password" path="adminPassword" required="required"
										class="form-control" />${passwordwrong}</td>
							<tr>
								<td>&nbsp;</td>
								<td>
									<div>
									<td><input type="submit" value="Login"></td>
									</div>
								</td>
							</tr>
								<span class="text">Don't Have Any Account ? <a href="adminsignup" class="text1">Signup</a> Now</span>	
						</form:form>
				

						
						<div class="col-md-12"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>