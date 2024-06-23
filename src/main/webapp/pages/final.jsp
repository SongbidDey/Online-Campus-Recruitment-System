<%@ page language="java" import="java.sql.*" %>
<%-- <%
String uname=(String) session.getAttribute("uname"); 
if (uname==null)
{
response.sendRedirect("login.jsp");
}
%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="../style/CFTwritten.css" type="text/css">
</head>
<body>
<jsp:include page="slidebar.jsp"></jsp:include>
<table border="1" height="300" width="1000" align="center">
		 		<tr>
		 			<th>APPLICATION_ID</th>
		 			<th>CANDIDATE NAME</th>
		 			<th>PHONE</th>
		 			<th>EMAIL</th>
		 			
		 			
		 		</tr>
		 		
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
			String passwordDB="sristi";
			
			con=DriverManager.getConnection(url,useridDB,passwordDB);
			stmt=con.createStatement();
			
			
			String query="SELECT APPLICATION_ID, APPLICANT_NAME,PHONE,EMAIL FROM FINAL";
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
			}//end of while loop
			
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