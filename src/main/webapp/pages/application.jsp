<html>
<head>
<title>Applicant</title>
</head>
<body bgcolor="accbee" style="font-family:sans-serif">
<header><jsp:include page="header.jsp"></jsp:include></header>
<br><br><br><br><table width="86%" border="0" align="centre"  >
<tr>
<td colspan="2" >
</td>
</tr>
<tr>
<td width="150" valign="top">

</td>
<td width ="750">
<table border="5" align="centre" width=100%>
<form name="form1" action="applicationID.jsp" method="post">
<tr>
<td bgcolor ='#e7f0fd' colspan='4' align=center height=20><b><br>Contact
Information<br><br></b></td><br>

<tr>
<td>&nbsp;Name</td><td>
<input type='text' placeholder="Enter Full Name" name='applicant_name' id='applicant_name 'size ='20' value='' required/></td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr>
<tr><td>&nbsp;Permanent address</td>
<td><input type='text' placeholder="Enter Permanent Address" name='permanent_address' id='permanent_address' size ='40' value='' required/></td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr>
<tr><td>&nbsp;Current address</td>
<td>
<input type='text' placeholder="Enter Current Address" name='current_address' id='current_address' size ='40' value=''/>
</td><td>&nbsp;Email</td>
<td><input type='email' placeholder="Enter Valid email" name='email' id='email' size ='25' value='' required/></td>
</tr>
<tr><td>&nbsp;Phone</td>
<td><input type='text' placeholder="Enter Valid Number" name='phone' id='phone' size ='15' value='' required/></td>
<td>&nbsp;Alternative phone</td>
<td><input type='text' placeholder="Enter Alternative Number" name='alternative_phone' id='alternative_phone' size ='15' value=''/></td>
</tr>
<tr>
<td bgcolor ='#e7f0fd' colspan='4' align=center height=20><b><br>Personal
Information<br><br></b></td>
</tr>
<tr><td colspan='4'><br>


&nbsp;DOB&nbsp;&nbsp;&nbsp;<input type='date' name='dob' id='dob' size ='10' value='' required/>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

Nationality&nbsp;&nbsp;&nbsp;<input type='text' placeholder="Nationality" name='nationality'
id='nationality' size ='10' value='' required/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

Gender :&nbsp;<input type='radio'
name='gender' id='gender' size ='10' value='' required /> Male
<input type='radio'
name='gender' id='gender' size ='10' value='' required/> Female
<input type='radio'
name='gender' id='gender' size ='10' value='' required/> Others
&nbsp;&nbsp;&nbsp;&nbsp;

<br><br></td></tr>
<tr>
<td bgcolor ='#e7f0fd' colspan='4' align=center height=20><b><br>Professionals & Educational
Details<br><br></b>
</tr>
<tr><td>&nbsp;Work Exp</td>
<td><input type='text' placeholder="Not For Freshers" name='work_exp' id='work_exp' size ='10' value=''/></td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr>
<tr><td>&nbsp;Skills</td>
<td><input type='text' placeholder="Knowledge" name='skill' id='skill' size ='30' value='' required/></td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr>
<tr><td>&nbsp;Industry</td>
<td><input type='text' placeholder="Not For Freshers" name='industry' id='industry' size ='30' value=''/></td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr>
<tr>
<td>&nbsp;Category</td>
<td><input type='text' placeholder="Not For Freshers" name='category' id='category' size ='10' value=''/></td>
<td>&nbsp;</td><td>&nbsp;</td>
</tr>

<tr>
<td>&nbsp;Roles</td>
<td><input type='text' placeholder="Not For Freshers" name='roles' id='roles' size ='10' value=''/></td>

<td>&nbsp;Upload CV</td>
<td ><input type='file' name='upload_cv' id='upload_cv' size ='10' value='' required/></td>
</tr>


<tr><td>&nbsp;Current Employer</td>
<td><input type='text' placeholder="Not For Freshers" name='current_employer' id='current_employer' size ='30'
value=''/></td>

<td >&nbsp;Passout Year </td>
<td >
<select id="passout_year">
<option>2025</option>
<option>2024</option>
<option>2023</option>
<option>2022</option>
<option>2021</option>
<option>2020</option>
<option selected hidden> Select One</option>
</select>

</td>
</tr>


<tr>
<td>&nbsp;Highest Degree</td>
<td><input type='text' placeholder="Qualification" name='highest_degree' id='highest_degree' size ='10' value='' required/>
</td>


<td >&nbsp;Second Highest Degree</td>
<td ><input type='text' name='second_highest_degree' id='second_highest_degree' size ='10' value='' required/></td>
</tr>


<tr>
<a href="applicationID.jsp"> <td colspan=4 align=left><br> <input type='submit' name='submit' id='submit' size ='20'
value='Submit'/> </td> <input type='hidden' name='action_submit' id='action_submit' size ='20'
value='hrms_applicant_register_submit'/> </td></tr> </table> </a> <br><br>
</tr>


<tr>
<td colspan="2"></td>
</tr>
</table></body></html>