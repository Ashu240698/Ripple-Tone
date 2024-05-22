<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<style>
.login-card .login-btn {
	padding: 14px 158px 10px;
	background-color: #9145B6;
	border-radius: 50px;
	width: 62%;
	font-weight: bold;
	line-height: 20px;
	color: #fff;
}

.login-card .login-btn:hover {
	border: 1px solid #000;
	background-color: transparent;
	color: #000;
}

.form-control {
	width: 63%;
	padding-left: 10px;
	padding-top: 13px;
	padding-bottom: 10px;
}

.login-card-footer-text {
	margin-top: 3rem
}

.login-card-img {
	margin-top: 68px;
	margin-left: 2rem;
	height: 86%;
	position: absolute;
	width: 45%;
}

.login-card {
	border: 0;
	border-radius: 27.5px;
	box-shadow: 0 10px 30px 0 rgba(172, 168, 168, 0.43);
	overflow: hidden;
	padding-right: -3rem
}

body {
	font-family: "Karla", sans-serif;
	background-repeat: no-repeat;
	background-size: cover;
	background-image:
		url("https://www.xmple.com/wallpaper/gradient-red-linear-blue-3840x2160-c2-fb0628-6495ed-a-60-f-14.svg");
	min-height: 100vh;
}

.card-body {
	padding: 2rem;
	margin-left: 5rem;
	background-color: #F5F5F5;
}

.login-card-description {
	font-size: x-large;
	font-weight: lighter;
	margin-top: 10px;
	color: #4C3F91;
}

.login-card-footer-text {
	color: #B958A5;
}

.rt {
	font-size: xx-large;
	font-weight: bold;
	background: #76A7F2;
	background: -webkit-linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	background: -moz-linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	background: linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

.error {
	color: red;
}
</style>
<body>
	<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
		<div class="container">
			<div class="card login-card">
				<div class="row no-gutters">
					<div class="col-md-5">
						<img
							src="https://i.pinimg.com/originals/2f/60/b2/2f60b2afbb5bf937969aeebdb2e30783.png"
							alt="login" class="login-card-img">
					</div>
					<div class="col-md-7">
						<div class="card-body">
							<div class="brand-wrapper">
								<img
									src="https://www.gilmanscholarship.org/wp-content/uploads/2020/12/Apple-Music-1.png"
									alt="logo" class="logo" height="100"> <span class="rt">Ripple
									Tone</span>
							</div>
							<p class="login-card-description">Signup into your account</p>
							<form:form action="signupProcess" modelAttribute="user"
								method="post">
								<div class="form-group">


									<tr>
										<td><form:input path="userName" required="required"
												class="form-control" placeholder="Name" /></td>
									<tr>
										<td>&nbsp;</td>
										<td><form:errors path="userName" class="error" /></td>
									</tr>
									</tr>



									<tr>
										<td><form:input path="userEmail" required="required"
												class="form-control" placeholder="Email" /></td>
										<td class="error">${userexist}</td>
									<tr>
										<td>&nbsp;</td>
										<td><form:errors path="userEmail" class="error" /></td>
									</tr>
									</tr>


									<tr>
										<td><form:input type="password" path="userPassword"
												required="required" class="form-control"
												placeholder="Password" /></td>
									<tr>
										<td>&nbsp;</td>
										<td><form:errors path="userPassword" class="error"/></td>
									</tr>
									</tr>

									<tr>
										<td><form:input path="userContact" class="form-control"
												placeholder="Contact no" /></td>
									<tr>
										<td>&nbsp;</td>
										<td><form:errors path="userContact" class="error" /></td>
									</tr>
									</tr>

								</div>
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" value="Signup"
										class="btn btn-block login-btn mb-4"></td>
								</tr>
							</form:form>
							<i class="bi bi-arrow-left-circle-fill"><svg
									xmlns="http://www.w3.org/2000/svg" width="30" height="40"
									fill="currentColor" class="bi bi-arrow-left-circle-fill"
									viewBox="0 0 16 16">
 									<a href="login"> <path
											d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z" />
									</svg></i></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>