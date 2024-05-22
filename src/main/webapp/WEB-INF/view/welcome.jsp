<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ripple Tone</title>
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
	background-color: black;
}

.left {
	float: left;
	font-weight: bold;
	font-size: x-large;
	background: #76A7F2;
	background: -webkit-linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	background: -moz-linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	background: linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}
.right {
float: right;
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

.home {
	margin-top: 7rem;
}

.space {
	padding-top: 3rem;
	color: white;
}


body {
	background-image:
		url("https://sukadunia.net/wp-content/uploads/2019/12/after-effects-audio-spectrum-with-color-bar.gif");
	background-size: cover; 

}
html{
  min-height: 100%;
  overflow: hidden;
}


.typing-demo {
  width: 22ch;
  animation: typing 2s steps(22), blink .5s step-end infinite alternate;
  white-space: nowrap;
  overflow: hidden;
  border-right: 3px solid;
  font-family: Copperplate, Papyrus, fantasy;
  font-size: 4rem;
  	background: #76A7F2;
	background: -webkit-linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	background: -moz-linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	background: linear-gradient(to right, #76A7F2 0%, #F94342 77%);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
  
}

@keyframes typing {
  from {
    width: 0
  }
}
    
@keyframes blink {
  50% {
    border-color: transparent
  }
}


/* galary style */
* {margin: 0; padding: 0;}
 
#container {
	overflow: hidden;
	margin-top: 50px auto;
	margin-top: 6rem;
}

 
/*photobanner*/
 
.photobanner {
	height: 233px;
	width: 3550px;
	margin-bottom: 80px;
}

img {
  display: inline-block;
}


/*keyframe animations*/
.first {
	        animation: bannermove 21s linear infinite;
}
 
@keyframes bannermove {
 0% {
    margin-left: 0px;
 }
 100% {
    margin-left: -2125px;
 }
 
}
 


</style>

<body>

	<ul>
		<li class="left"><a href="welcome"> Ripple Tone</a></li>
		<li class="right"><a href="adminlogin"><button type="button" class="btn btn-outline-info">Admin</button></a></li>
		<li class="right"><a href="login"><button type="button" class="btn btn-info">User</button></a></li>
	</ul>

	<div class="home">
		<div class="d-flex justify-content-center space">
			<div class="wrapper">
				<div class="typing-demo">Welcome To Ripple Tone...</div>
			</div>
		</div>
	</div>
	<div id="container">
    <!-- Each image is 350px by 233px -->
    <div class="photobanner">
    	<img class="first" src="https://m.media-amazon.com/images/M/MV5BMWJkMjJiNzMtNzhmOC00MjQ3LTg5MmEtMTRkMTg1ZjQ2ZmM1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNDkxMzY0Mjk@._V1_.jpg"  height="250px" alt="" />
    	<img src="https://1.bp.blogspot.com/-GXw6-huXdxk/XZY_FAxTeiI/AAAAAAAAAMs/CbEBW4mFgFEIFFApj3pd19ZpYjFzAlRGQCLcBGAsYHQ/s1600/IMG_20191003_235746.jpg" height="250px" alt="" />
    	<img src="https://angartwork.akamaized.net/?id=118829038&size=640" height="250px" alt="" />
    	<img src="https://media.newstrack.in/uploads/entertainment-news/regional-cinema-news/Mar/01/big_thumb/ninja_5e5b7cd806093.JPG"  height="250px" alt="" />
    	<img src="https://i.pinimg.com/originals/60/9a/80/609a8061a8ae93f2735f3e3e20190b90.jpg"  height="250px" alt="" />
    	<img src="https://resize.indiatvnews.com/en/resize/newbucket/715_-/2017/07/img-20170729-wa0004-1501411459.jpg"  height="250px" alt="" />
    	<img src="https://m.media-amazon.com/images/M/MV5BMWJkMjJiNzMtNzhmOC00MjQ3LTg5MmEtMTRkMTg1ZjQ2ZmM1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNDkxMzY0Mjk@._V1_.jpg"  height="250px" alt="" />  
      	<img src="https://angartwork.akamaized.net/?id=118829038&size=640" height="250px" alt="" />
      	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ13jn1eYPflRf797qE5u6Vq_GJNnqJm5NnjpsEL-nEIuLOiI5ujDIOu8PukA8bIAS85Bg&usqp=CAU" height="250px" alt="" />
    	<img src="https://c8.alamy.com/comp/2B1N7HA/ala-vaikunthapurramuloo-indian-poster-in-telugu-and-english-from-left-allu-arjun-pooja-hegde-2020-bluesky-cinemas-courtesy-everett-collection-2B1N7HA.jpg" height="250px" alt="" />
    	<img src="https://i.pinimg.com/564x/9f/80/71/9f80718c37bc3dd59e49b302788e785d.jpg" height="250px" alt="" />
    	<img src="https://upload.wikimedia.org/wikipedia/hi/3/38/My_Birthday_Song_-_Poster.jpg" height="250px" alt="" />
    	<img src="https://1.bp.blogspot.com/-GXw6-huXdxk/XZY_FAxTeiI/AAAAAAAAAMs/CbEBW4mFgFEIFFApj3pd19ZpYjFzAlRGQCLcBGAsYHQ/s1600/IMG_20191003_235746.jpg" height="250px" alt="" />
    	<img src="https://gumlet.assettype.com/Prabhatkhabar%2F2021-08%2F1d07b9a0-cc60-473a-a312-5d035b225c67%2Fbell_bottom_song__poster_copied_from_Instagram.jpg?format=auto" height="250px" alt="" />
    	 <img src="https://img.indiaforums.com/media/640x0/48/7583-vatsal-sheth-and-ishita-dutta.jpg" height="250px" alt="" />
     		
    </div>
</div>
	
</body>
</html>