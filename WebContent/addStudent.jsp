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
<title>���ѧ����Ϣ</title>
</head>
<body>
<div align="center">
<form action="addStudent" method="post">
<table width="500" cellpadding="1" cellspacing="1">
<tr>
	<td colspan="9" align="center" class="title" height="30">ѧ����Ϣ</td>
</tr>

<tr height="30">
<td align="center" class="header" >ѧ�ţ�</td>
<td align="center" class="data" ><input name="id"></td>
</tr>
<tr height="30">
<td align="center" class="header" >������</td>
<td align="center" class="data" ><input name="name"></td>
</tr>
<tr height="30">
<td align="center" class="header" >���䣺</td>
<td align="center" class="data" ><input name="age"></td>
</tr>
<tr height="30">
<td align="center" class="header" >�Ա�</td>
<td align="center" class="data" >
<select name="sex">
<option value="1">��</option>
<option value="0">Ů</option>
</select></td>
</tr>
<tr height="30">
<td align="center" class="header" >רҵ��</td>
<td align="center" class="data" ><input name="major"></td>
</tr>
<tr height="30">
<td align="center" class="header" >ѧԺ��</td>
<td align="center" class="data" ><input name="college"></td>
</tr>
<tr height="30">
<td align="center" class="header" >��飺</td>
<td align="left" class="data" >
<textarea rows="10" cols="50" name="introduction"></textarea></td>
</tr>
</table>
<input type="submit" value="�ύ">
</form>
</div>
</body>
</html>