<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidebar {
  height:100%;
  width: 18%;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 20px;
}

.sidebar a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 18px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.sidebar .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

.openbtn {
  font-size: 20px;
  cursor: pointer;
  background-color: #11111100;
  color: rgb(0, 0, 0);
  padding: 10px 15px;
  border: none;
}

.openbtn:hover {
  background-color: #4444443a;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}

</style>
<link href="../style/side.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="mySidebar" class="sidebar">
  <a href="success.jsp">Home</a>
  <a href="track.jsp">Track Application</a><br>
  
  
  <h2 style= "color:#8cbed6">&nbsp;&nbsp;&nbsp;&nbsp;Written round</h2>
  <a href="CFTwritten.jsp">call for test</a>
  <a href="CFTselected.jsp">Selected Candidate</a>
  <a href="CFTresult.jsp">Update Result</a><br>
  
  <h2 style= "color:#8cbed6">&nbsp;&nbsp;&nbsp;&nbsp;Technical Round</h2>
  <a href="shortlistTech.jsp">Shortlist For Tech Round</a>
  <a href="techresult.jsp">Update Result</a><br>
  
  <h2 style= "color:#8cbed6">&nbsp;&nbsp;&nbsp;&nbsp;HR Round</h2>
  <a href="shortlistHR.jsp">Shortlist For HR Round</a>
  <a href="HRresult.jsp">Update Result</a>
  <a href="shortlistselection.jsp">Shortlist For Selection</a>
  <a href="final.jsp">Selected Candidates</a><br>
  
  <a href="login.jsp" onclick="return confirm('Are you sure you want to logout?')">Log Out </a>
  <a href="contact.jsp">Contact</a>
  
  ;
  
</div>



<script>
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
   
</body>
</html>