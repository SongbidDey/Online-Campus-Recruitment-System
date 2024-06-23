<%
String uname=(String) session.getAttribute("uname"); 
if (uname==null)
{
response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success</title>
<link rel="stylesheet" href="../style/welcome-style.css" type="text/css">
</head>


<body>
<jsp:include page="slidebar.jsp"></jsp:include>
<div class="container">
<h1 align="center" >Welcome <%=uname %></h1><br><br><br>
  <table style="width:90%">
    <tr>
      <th colspan="2" align="center">
        <h1>CAMPUS RECRUITMENT SYSTEM</h1><br>
      </th>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <p align="justify">The purpose of the project CAMPUS RECRUITMENT SYSTEM, the manual
        work makes the process slow and other problems such as inconsistency and ambiguity on operations.
        In order to avoid this web based placement managed system is proposed, where the student
        information in the college with regard to placement is managed efficiently. It intends to help fast in
        access procedures in placement related activities and ensures to maintain the details of the student.
        The key feature of this project is that it is one time registration enabled. The placement cell calls the
        companies to select their students for jobs via the campus interview. The placement cell allows the
        companies to view the student resumes in selective manner. They can filter the students profile as per
        their requirement. The job details of the placed students will be provided by the administrator. This
        project provides the facility of maintaining the details of the students and gets the requested list of
        candidates for the company who would like to recruit the students based on given query.</p><br><br>
      </td>
    </tr>
    
  </table>
</div>
</body>
</html>