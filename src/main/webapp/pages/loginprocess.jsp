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
	
	String userid=request.getParameter("userid");
	String password=request.getParameter("password");
	
	String query="SELECT UNAME FROM CLG_USER WHERE USERID='"+userid+"' AND PASSWORD='"+password+"'"; 
	rs=stmt.executeQuery(query);
	
	if(rs.next()==true)
	
	{
	
		String uname=rs.getString("UNAME"); 
		session.setAttribute("uname", uname); 
		response.sendRedirect("success.jsp");
	}
	
	else
	
	{
		response.sendRedirect("error.jsp");
	
	}
	con.close();
	
}

catch (Exception e)

{
	out.println(e);
}
%>