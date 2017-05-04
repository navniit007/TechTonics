<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="AddServlet" action="post">
<table border="2px">
<tr>
<td><input type="date" name="dname" id=did placeholder="Enter Date"></td>
</tr>
<tr>
<td><input type="text" name="tname" id=tid placeholder="Enter Title"></td>
</tr>
<tr>
<td><input type="text" name="descname" id=descid placeholder="Enter Description"></td>
</tr>
<tr>
<td><input type="text" name="pname" id=pid placeholder="Presenter Name"></td>
</tr>
<tr>
<td><input type="submit" value="ADD"></td>
<td><input type="reset" value="Reset"></td>
</tr>

<table>
</form>
</body>
</html>