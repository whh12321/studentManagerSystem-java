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
<table width="500" cellpadding="1" cellspacing="1">
<tr>
	<td colspan="9" align="center" class="title" height="30">ѧ����Ϣ</td>
</tr>
<tr height="30">
<td align="center" class="header" width="100">ѧ�ţ�</td>
<td align="center" class="data" ><%=student.getId() %></td>
</tr>
<tr height="30">
<td align="center" class="header" width="100">������</td>
<td align="center" class="data" ><%=student.getName() %></td>
</tr>
<tr height="30">
<td align="center" class="header" width="100">���䣺</td>
<td align="center" class="data" ><%=student.getAge() %></td>
</tr>
<tr height="30">
<td align="center" class="header" width="100">�Ա�</td>
<td align="center" class="data" ><%=(student.getSex()==1?"��":"Ů") %></td>
</tr>
<tr height="30">
<td align="center" class="header" width="100">רҵ��</td>
<td align="center" class="data" ><%=student.getMajor() %>></td>
</tr>
<tr height="30">
<td align="center" class="header" width="100">ѧԺ��</td>
<td align="center" class="data" ><%=student.getCollege() %>></td>
</tr>
<tr height="30">
<td align="center" class="header" width="100">��飺</td>
<td align="left" class="data" ><%=student.getIntroduction() %></td>
</tr>

</table>
</div>
</body>
</html>