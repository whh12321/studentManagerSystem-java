<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@page import="db.StudentManager" %>
<%@page import="db.Student" %>
<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>�鿴ѧ����Ϣ</title>
</head>
<body>
<%
String id=request.getParameter("id");
Student student=StudentManager.getStudent(id);
%>
<div align="center">
<form action="updateStudent" method="post">
<table width="500" cellpadding="1" cellspacing="1">
<tr>
	<td colspan="9" align="center" class="title" height="30">ѧ����Ϣ</td>
</tr>
<tr height="30">
<td align="center" class="header" >ѧ�ţ�</td>
<td align="center" class="data" ><input name="id" 
	value="<%=student.getId()%>" readonly>
</td>
</tr>
<tr height="30">
<td align="center" class="header" >������</td>
<td align="center" class="data" ><input name="name"
	value="<%=student.getName() %>"></td>
</tr>
<tr height="30">
<td align="center" class="header" >���䣺</td>
<td align="center" class="data" ><input name="age"
	value="<%=student.getAge() %>"></td>
</tr>
<tr height="30">
<td align="center" class="header" >�Ա�</td>
<td align="center" class="data" >
<select name="sex">
<%
if(student.getSex()==1){
	out.println("<option value=\"1\"checked>��</option>");
	out.println("<option value=\"0\">Ů</option>");
}else{
	out.println("<option value=\"1\">��</option>");
	out.println("<option value=\"0\"checked>Ů</option>");
}%>
</select>
</td>

</tr>
<tr height="30">
<td align="center" class="header" >רҵ��</td>
<td align="center" class="data" ><input name="major"
	value="<%=student.getMajor() %>"></td>
</tr>
<tr height="30">
<td align="center" class="header" >ѧԺ��</td>
<td align="center" class="data" ><input name="college"
	value="<%=student.getCollege() %>"></td>
</tr>
<tr height="30">
<td align="center" class="header" >��飺</td>
<td align="left" class="data" >
<textarea rows="10" cols="50" name="introduction">
<%=student.getIntroduction() %></textarea></td>
</tr>
</table>
<input type="submit" value="�ύ">
</form>
</div>
</body>
</html>