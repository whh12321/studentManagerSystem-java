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
<title>ѧ����Ϣ����</title>
</head>
<body>
<div align="center">

<table width="600" cellpadding="1" cellspacing="1">
<tr>
	<td colspan="9" align="right" height="30">
	<a href="addStudent.jsp">���ѧ��</a>
	</td>
</tr>
</table >
<table width="600" cellpadding="1" cellspacing="1">
<tr>
<td colspan="9" align="center" class="title" height="30">
ȫ��ѧ����Ϣ
</td>
</tr>
<tr height="30">
<td align="center" class="header" >ѧ��</td>
<td align="center" class="header" >����</td>
<td align="center" class="header" >����</td>
<td align="center" class="header" >�Ա�</td>
<td align="center" class="header" >רҵ</td>
<td align="center" class="header" >ѧԺ</td>
<td align="center" colspan="3" class="header" >����</td>
</tr>
<%
ArrayList<Student> students=StudentManager.getAllStudents();
	for(Student student:students){
%>
<tr height="30">
	<td align="center" class="data">
	<%=student.getId() %>
	</td>
	<td align="center" class="data">
	<%=student.getName() %>
	</td>
	<td align="center" class="data">
	<%=student.getAge() %>
	</td>
	<td align="center" class="data">
	<%=(student.getSex()==1?"��":"Ů")%>
	</td>
	<td align="center" class="data">
	<%=student.getMajor() %>
	</td>
	<td align="center" class="data">
	<%=student.getCollege() %>
	</td>
	<td align="center" class="data">
	<a href="viewStudent.jsp?id=<%=student.getId() %>">�鿴</a>
	</td>
	<td align="center" class="data">
	<a href="updateStudent.jsp?id=<%=student.getId() %>">�޸�</a>
	</td>
	td align="center" class="data">
	<a href="deleteStudent.jsp?id=<%=student.getId() %>">ɾ��</a>
	</td>
</tr>
<%
	}
%>

</table>


</div>
</body>
</html>