<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="RegisterServlet" method="post">
First Name: <input type="text" name="fname" required="true" maxlength="10"><br><br>
Last Name: <input type="text" name="lname" required="true" maxlength="10"><br><br>
Username: <input type="text" name="uname" required="true" maxlength="10"><br><br>
Password: <input type="password" name="pass" required="true" maxlength="8"><br><br>
<input type="submit" value="Register">
</form>

</body>
</html>