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
	
	String query="INSERT INTO CANDIDATE(APPLICANT_NAME,PERMANENT_ADDRESS,CURRENT_ADDRESS,EMAIL,PHONE,ALTERNATIVE_PHONE,DOB,NATIONALITY,GENDER,WORK_EXP,SKILL,INDUSTRY,CATEGORY,ROLES,UPLOAD_CV,CURRENT_EMPLOYER,PASSOUT_YEAR,HIGHEST_DEGREE,SECOND_HIGHEST_DEGREE) VALUES ('"+applicant_name+"','"+permanent_address+"','"+current_address+"','"+email+"','"+phone+"','"+alternative_phone+"','"+dob+"','"+nationality+"','"+gender+"','"+work_exp+"','"+skill+"','"+industry+"','"+category+"','"+roles+"','"+upload_cv+"','"+current_employer+"','"+passout_year+"','"+highest_degree+"','"+second_highest_degree+"')";
	int rn=stmt.executeUpdate(query);
	if(rn>0)
	{
		session.setAttribute("applicant_name", applicant_name);
		response.sendRedirect("successcandidate.jsp");
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
