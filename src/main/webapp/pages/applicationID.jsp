<%@ page import="java.io.*, java.util.*, javax.mail.*, javax.mail.internet.*, java.security.SecureRandom" %>
<%@ page language="java" import="java.sql.*" %>

<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background-image: linear-gradient(to right, #accbee 0%, #e7f0fd); 
      }
        h1 {
          color: #88B04B;
          font-family: "Raleway", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: #ffffff;
        padding: 60px;
        border-radius: 10%;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
      .checkmark{
      font-size:50px;
      padding-left:13px;
      }
       .btns {
  		background-color: #88B04B;
 		color: white;
  		font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
  		font-size: 20px;
  		border: none;
  		border-radius: 5px;
  		padding: 10px 20px;
  		cursor: pointer;
  		transition: background-color 0.3s ease;
  		margin-top: 20px;
 		margin-left: auto;
  		margin-right: auto;
}

.btn:hover {
  background-color: #9ABC66;
}
      
      
      
      
    </style>
    <body>
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">Success</i>
      </div>
        <h1>Here is your Applicant ID</h1> 
        <%
        SecureRandom random = new SecureRandom();
   		int uniqueNumber = random.nextInt(1000000);
   		%> <h1>"<%out.print(uniqueNumber);%>"</h1>
   		<p><br>Use this ID to track your application</p>
   		<br><br><a href="home.jsp"><button class="btns">Complete</button></a>
   		
      </div>
    </body>
</html>
<%@ page language="java" import="java.sql.*" %>
<%
	Connection con;
	Statement stmt;
	ResultSet rs;
try

{

	String driver="oracle.jdbc.driver.OracleDriver";
	Class.forName(driver);
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	
	String useridDB="system";
	String passwordDB="songbid";
	
	con=DriverManager.getConnection(url,useridDB,passwordDB);
	stmt=con.createStatement();
	
	String applicant_name=request.getParameter("applicant_name");
	String permanent_address=request.getParameter("permanent_address");
	String current_address=request.getParameter("current_address");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String alternative_phone=request.getParameter("alternative_phone");
	String dob=request.getParameter("dob");
	String nationality=request.getParameter("nationality");
	String gender=request.getParameter("gender");
	String work_exp=request.getParameter("work_exp");
	String skill=request.getParameter("skill");
	String industry=request.getParameter("industry");
	String category=request.getParameter("category");
	String roles=request.getParameter("roles");
	String upload_cv=request.getParameter("upload_cv");
	String current_employer=request.getParameter("current_employer");
	String passout_year=request.getParameter("passout_year");
	String highest_degree =request.getParameter("highest_degree");
	String second_highest_degree=request.getParameter("second_highest_degree");
	int application_id=uniqueNumber;
	String query="INSERT INTO CANDIDATE(APPLICANT_NAME,PERMANENT_ADDRESS,CURRENT_ADDRESS,EMAIL,PHONE,ALTERNATIVE_PHONE,DOB,NATIONALITY,GENDER,WORK_EXP,SKILL,INDUSTRY,CATEGORY,ROLES,UPLOAD_CV,CURRENT_EMPLOYER,PASSOUT_YEAR,HIGHEST_DEGREE,SECOND_HIGHEST_DEGREE,APPLICATION_ID) VALUES ('"+applicant_name+"','"+permanent_address+"','"+current_address+"','"+email+"','"+phone+"','"+alternative_phone+"','"+dob+"','"+nationality+"','"+gender+"','"+work_exp+"','"+skill+"','"+industry+"','"+category+"','"+roles+"','"+upload_cv+"','"+current_employer+"','"+passout_year+"','"+highest_degree+"','"+second_highest_degree+"','"+application_id+"')";
	int rn=stmt.executeUpdate(query);
	if(rn>0)
	{
		session.setAttribute("applicant_name", applicant_name);
		 
	}
	else
	{
		response.sendRedirect("application.jsp");
	}
	con.close();	
}
catch(Exception e)
{
	out.print("<h1>"+e+"</h1>");
%>
	<jsp:include page="application.jsp"></jsp:include>
<%
}
%>