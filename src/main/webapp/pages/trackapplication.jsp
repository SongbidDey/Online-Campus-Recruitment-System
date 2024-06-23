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

<table border="1" height="100" width="1000" align="center">
<h1 align="center">WRITTEN ROUND</h1>
		 		<tr>
		 			<th>APPLICATION_ID</th>
		 			
		 			<th>STATUS</th>
		 			
		 			
		 		</tr>
		 

<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;

String application_id="";

String feedback="";



try
{
	String driver="oracle.jdbc.driver.OracleDriver";
	Class.forName(driver);
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	
	String useridDB="system";
	String passwordDB="songbid";
	
	con=DriverManager.getConnection(url,useridDB,passwordDB);
	stmt=con.createStatement();
	
	int a_id=Integer.parseInt(request.getParameter("application_id"));
	
	//String query="SELECT CANDIDATE.APPLICATION_ID,APPLICANT_NAME,FEEDBACK FROM CANDIDATE,RESULT_WRITTEN WHERE RESULT_WRITTEN.'"+a_id+"'=CANDIDATE.APPLICATION_ID ";
	String query="SELECT APPLICATION_ID,FEEDBACK FROM RESULT_WRITTEN WHERE APPLICATION_ID='"+a_id+"' ";
	rs=stmt.executeQuery(query);
	
	if(rs.next()==true)
	{
		
		%>
		<tr>
				<td>&nbsp;<%=rs.getInt("APPLICATION_ID")%></td>
			
				<td>&nbsp;<%=rs.getString("FEEDBACK")%></td>
		</tr>
		
		
		<% 
	}
	else
	{
		
	}
	con.close();
}
catch(Exception e)
{
	out.print(e);
}
%>
<table border="1" height="100" width="1000" align="center">
<h1 align="center">TECHNICAL ROUND</h1>
		 		<tr>
		 			<th>APPLICATION_ID</th>
		 			
		 			<th>STATUS</th>
		 			
		 			
		 		</tr>
		 		
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
	
	int a_id=Integer.parseInt(request.getParameter("application_id"));
	
	//String query="SELECT CANDIDATE.APPLICATION_ID,APPLICANT_NAME,FEEDBACK FROM CANDIDATE,RESULT_WRITTEN WHERE RESULT_WRITTEN.'"+a_id+"'=CANDIDATE.APPLICATION_ID ";
	String query="SELECT APPLICATION_ID,FEEDBACK FROM RESULT_TECH WHERE APPLICATION_ID='"+a_id+"' ";
	rs=stmt.executeQuery(query);
	
	if(rs.next()==true)
	{
		
		%>
		<tr>
				<td>&nbsp;<%=rs.getInt("APPLICATION_ID")%></td>
			
				<td>&nbsp;<%=rs.getString("FEEDBACK")%></td>
		</tr>
		
		
		<% 
	}
	else
	{
		
	}
	con.close();
}
catch(Exception e)
{
	out.print(e);
}


%>
</table>
<table border="1" height="100" width="1000" align="center">
<h1 align="center">HR ROUND</h1>
		 		<tr>
		 			<th>APPLICATION_ID</th>
		 			
		 			<th>STATUS</th>
		 			
		 			
		 		</tr>
		 		
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
	
	int a_id=Integer.parseInt(request.getParameter("application_id"));
	
	//String query="SELECT CANDIDATE.APPLICATION_ID,APPLICANT_NAME,FEEDBACK FROM CANDIDATE,RESULT_WRITTEN WHERE RESULT_WRITTEN.'"+a_id+"'=CANDIDATE.APPLICATION_ID ";
	String query="SELECT APPLICATION_ID,FEEDBACK FROM RESULT_HR WHERE APPLICATION_ID='"+a_id+"' ";
	rs=stmt.executeQuery(query);
	
	if(rs.next()==true)
	{
		
		%>
		<tr>
				<td>&nbsp;<%=rs.getInt("APPLICATION_ID")%></td>
			
				<td>&nbsp;<%=rs.getString("FEEDBACK")%></td>
		</tr>
		
		
		<% 
	}
	else
	{
		
	}
	con.close();
}
catch(Exception e)
{
	out.print("Not applicaple"+e);
}


%>
</table>

		 
</table>
</body>
</html>
