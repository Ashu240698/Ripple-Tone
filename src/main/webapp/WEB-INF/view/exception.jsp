<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>error page</title>
</head>
<style>
	div{
		text-align: center;
	}
</style>
<body>
	<div>
		<h1>Error Page</h1>
		<h2>${errorMsg}</h2>
	</div>
</body>
</html>