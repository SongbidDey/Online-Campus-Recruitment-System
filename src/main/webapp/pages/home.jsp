<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
    <link href="../style/home.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a id="login" class="nav-link" href="login.jsp">Employee Login</a>
            </li>
             <%-- <li class="nav-item">
              <a id="signup" class="nav-link" href="sign_up.jsp">Sign up</a> </li> --%>
          </ul>
        </div>
      </div>
    </nav>
     <header class="mainHeading">
        <div class="mainHeading__content">
           <article class="mainHeading__text">
              <p class="mainHeading__preTitle">Project</p>
              <h2 class="mainHeading__title">Campus Recruitment System</h2>
              <p class="mainHeading__description">
                Campus Recruitment System (CRS) is web-based software to reduce communication gap between company student and incharge. The Main objective of this application is to make easy the recruitment process of any organization.
              </p>
				<br><a class="cta" href="./track.jsp">Track</a>
                <a class="cta" href="./application.jsp">Apply</a>
           </article>
     
           <figure class="mainHeading__image">
              <img
                 src="../images/ofc2.png"
                 alt=""
              />
           </figure>
        </div>
     </header>
     <script src="index.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>