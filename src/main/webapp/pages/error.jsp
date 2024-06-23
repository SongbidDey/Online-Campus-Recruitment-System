<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<style>
body
{
background: white;
}
h3
{
text-align:center;
color: red;
}
.container
{
margin-top: 55px;
}
</style>
</head>
<body>
<div class="warning"><h3>Userid and/or Password incorrect</h3></div><br>
<div class="container">
<jsp:include page="login.jsp" />
</div>
</body>
</html>