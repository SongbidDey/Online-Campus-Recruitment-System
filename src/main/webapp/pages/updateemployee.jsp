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
	String passwordDB="sristi";
	
	con=DriverManager.getConnection(url,useridDB,passwordDB);
	stmt=con.createStatement();
	
	String query="UPDATE CLG_USER SET '"+PASSWORD+"'"
}
%>