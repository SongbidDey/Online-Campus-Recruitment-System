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
<jsp:include page="slidebar.jsp"></jsp:include>
<table border="1" height="100" width="1000" align="center">
		 		<tr>
		 			<th>APPLICATION_ID</th>
		 			<th>CANDIDATE NAME</th>
		 			<th>PHONE</th>
		 			<th>EMAIL</th>
		 			
		 			
		 		</tr>
		 

<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;

String application_id="";
String applicant_name="";
String phone="";
String email="";

try
{
	String driver="oracle.jdbc.driver.OracleDriver";
	Class.forName(driver);
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	
	String useridDB="system";
	String passwordDB="sristi";
	
	con=DriverManager.getConnection(url,useridDB,passwordDB);
	stmt=con.createStatement();

	
	String query="SELECT APPLICATION_ID, APPLICANT_NAME,PHONE,EMAIL FROM CANDIDATE WHERE APPLICATION_ID IN(SELECT APPLICATION_ID FROM RESULT_WRITTEN WHERE MARKS >=70)";
	rs=stmt.executeQuery(query);
	while(rs.next())
	{
		%>
		<tr>
				<td>&nbsp;<%=rs.getInt("APPLICATION_ID")%></td>
				<td>&nbsp;<%=rs.getString("APPLICANT_NAME")%></td>
				<td>&nbsp;<%=rs.getString("PHONE")%></td>
				<td>&nbsp;<%=rs.getString("EMAIL")%></td>
		</tr>
		
		
		<% 
		//out.print(application_id+applicant_name+phone+email);	
	}
	con.close();
}
catch(Exception e)
{
	out.print(e);
}

%>
</table>
</body>
</html>
	
