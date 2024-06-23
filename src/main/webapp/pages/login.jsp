<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="../style/login.css" rel="stylesheet" type="text/css">

</head>


<body>
   
    <div class="container">
        <article class="mainHeading__text">
            <form action="loginprocess.jsp" method="post">
                <div class="txt_field">
                    <input type="text" name="userid" required>
                    <span></span>
                    <label>User ID</label>
                </div>
                <div class="txt_field">
                    <input type="password" name="password" required>
                    <span></span>
                    <label>Password</label>
                </div>
                <div class="forgot">Forgot Password?</div>
                <input type="submit" value="Login">
            </form>
        </article>
    </div>
</body>

</html>