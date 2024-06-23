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
<form action="CFTresultprocess.jsp" method="post">

<table border="1" height="80" width="1000" align="center">
		 		<tr>
		 			<td>&nbsp;&nbsp;<label for="applicantion_id">Applicantion ID</label></td>
      				<td>&nbsp;&nbsp;<input type="text" id="application_id" name="application_id" /></td>
		 			<td>&nbsp;&nbsp;<label for="marks">Marks</label></td>
      				<td>&nbsp;&nbsp;<input type="text" id="marks" name="marks" /></td>
      				<td>&nbsp;&nbsp;<label for="feedback">Feedback</label></td>
      				<td>&nbsp;&nbsp;<input type="text" id="feedback" name="feedback" /></td>
      				
		 		</tr>
		 		<tr>
		 			
		 			<a href="CFTresultprocess.jsp"><td colspan="6" align="center">
		 				<input type="submit" name='submit' id='submit'  value="Upload" />
		 			</td></a>
		 		</tr>
</table>
</form>
</body>
</html>