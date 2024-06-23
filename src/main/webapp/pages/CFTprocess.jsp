<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../style/CFTwritten.css" type="text/css">

</head>
<body>

<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;

String application_id="";
String applicant_name="";
String phone="";
String email="";
String skill="";

try
{
	String driver="oracle.jdbc.driver.OracleDriver";
	Class.forName(driver);
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	
	String useridDB="system";
	String passwordDB="songbid";
	
	con=DriverManager.getConnection(url,useridDB,passwordDB);
	stmt=con.createStatement();
	
	String app_id=request.getParameter("app_id");
	out.print(app_id);
	String query="SELECT APPLICATION_ID, APPLICANT_NAME,PHONE,EMAIL,SKILL FROM CANDIDATE WHERE APPLICATION_ID='"+app_id+"'";
	rs=stmt.executeQuery(query);
	
	if(rs.next()==true)
	{
		application_id=rs.getString("APPLICATION_ID");
		applicant_name=rs.getString("APPLICANT_NAME");
		phone=rs.getString("PHONE");
		email=rs.getString("EMAIL");
		skill=rs.getString("SKILL");
	}
	con.close();
}
catch(Exception e)
{
	out.print(e);
}

//out.print(application_id+applicant_name+phone+email);	
%>
<%
try
{
	String driver="oracle.jdbc.driver.OracleDriver";
	Class.forName(driver);
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	
	String useridDB="system";
	String passwordDB="songbid";
	
	con=DriverManager.getConnection(url,useridDB,passwordDB);
	stmt=con.createStatement();
	
	String query="INSERT INTO SELECT_WRITTEN(APPLICATION_ID,APPLICANT_NAME,EMAIL,PHONE,SKILL) VALUES ('"+application_id+"','"+applicant_name+"','"+email+"','"+phone+"','"+skill+"')";
	int rn=stmt.executeUpdate(query);
	if(rn>0)
	{
		response.sendRedirect("CFTwritten.jsp");	
	}
	else
	{
		response.sendRedirect("/clg_project/pages/CFTwritten.jsp");
	}
	con.close();
}
catch(Exception e)
{
	response.sendRedirect("/clg_project/pages/CFTwritten.jsp");
}


%>
</body>
</html>