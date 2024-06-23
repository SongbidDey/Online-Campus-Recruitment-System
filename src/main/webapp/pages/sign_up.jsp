<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="../style/sign_up.css" type="text/css">
</head>
<body>
<form action="sign_up_process.jsp" method="post">
<h1>Registration</h1>
<div class="icon">
<i class="fas fa-user-circle"></i>
</div>
<div class="formcontainer">
<div class="container">
<label for="userid"><strong>User ID</strong></label>
<input type="text" placeholder="Enter UserID" name="userid" required>
<label for="uname"><strong>User Name</strong></label>
<input type="text" placeholder="Enter User Name" name="uname" required>
<label for="psw"><strong>Password</strong></label>
<input type="password" placeholder="Enter Password" name="password" required>
</div>
<button type="submit" name="submit"><strong>Register</strong></button>
</div>
</form>
</body>
</html>