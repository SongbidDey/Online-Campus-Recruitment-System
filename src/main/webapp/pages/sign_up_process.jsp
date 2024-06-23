<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<% 
	Connection con;
	Statement stmt;
	
	try
	{
		String driver="oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		
		String useridDB="system";
		String passwordDB="sristi";
		
		con=DriverManager.getConnection(url,useridDB,passwordDB);
		stmt=con.createStatement();
		
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
		String uname=request.getParameter("uname");

		
		String query="INSERT INTO CLG_USER(USERID,PASSWORD,UNAME) VALUES ('"+userid+"','"+password+"','"+uname+"')";
		int rn=stmt.executeUpdate(query);
		if(rn>0)
		{
			session.setAttribute("uname", uname);
			response.sendRedirect("success.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		con.close();	
	}
	catch(Exception e)
	{
		out.print("<h5>"+e+"</h5>");
%>
		<jsp:include page="sign_up.jsp"></jsp:include>
<%
	}
%>