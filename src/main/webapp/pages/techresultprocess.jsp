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
		
		int application_id = Integer.parseInt(request.getParameter("application_id"));
		double marks = Double.parseDouble(request.getParameter("marks"));
		String feedback=request.getParameter("feedback");

		
		String query="INSERT INTO RESULT_TECH (APPLICATION_ID,MARKS,feedback) VALUES ('"+application_id+"','"+marks+"','"+feedback+"')";
		int rn=stmt.executeUpdate(query);
		if(rn>0)
		{
			response.sendRedirect("techresult.jsp");	
		}
		else
		{
			response.sendRedirect("/clg_project/pages/techresult.jsp");
		}
		con.close();
	}
	catch(Exception e)
	{
		out.print("<h5>"+e+"</h5>");
		response.sendRedirect("/clg_project/pages/techresult.jsp");
		

		
	}
	
%>

