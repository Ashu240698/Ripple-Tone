<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<style>
body {

background-image:url("https://wallpaperbat.com/img/313522-download-wallpaper-2560x1440-lighthouse-night-vector-art.jpg");
background-repeat: no-repeat;
	background-size: cover;
}
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #4C3F91;
}

li {
	float: left;
}

li a {
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #F9C5D5;
}
.card{
margin-left: 35rem;
margin-top: 4rem;
}
.big{
font-size: x-large;
font-weight: 500;
}
.price{
font-size: x-large;
font-weight: 500;
}
.price1{
text-decoration: line-through;
color: gray;
}
.save{
font-size: small;
color: red;
}
.heading {
margin-top: 1rem;
color: #F05454;
font-family: Trattatello, fantasy;
}

.right {
	float: right;
	padding: 5px;
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
		if(session.getAttribute("user")==null){
			response.sendRedirect("redirect:/welcome");
		}
	%>	
<ul>
		<li><a href="music"> HOME</a></li>
		<li class="right"><a href="logout"><button type="button" class="btn btn-outline-danger">Logout</button></a></li>
	</ul>
        <h2 class="heading" align="center">Now Enjoy Music Without Interruption with Rippletone</h2>
<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="https://moddingunited.xyz/wp-content/uploads/2021/11/ADV-Player-MOD-APK.jpg">
  <div class="card-body">
    <span class="price">₹399</span>
     <span class="price1">₹698</span>
     <div class="save">save ₹299</div>
    <p class="card-text"><span class="big">1</span> year Rippletone Plus</p>
  </div>
  <div class="card-body">
   <button type="button" class="btn btn-primary">Buy Now</button>
  </div>
</div>




</body>
</html>