<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>



<html>
	<head>
                                <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
		<title>Login Page</title>
	</head>

	<body>
	
	<table border=2px align="center">
		<form action="LoginServlet1" method="post">

					
					<tr>
			<td>Username; <input type="text" name="username" required="true" maxlength="10"/></td>		
		</tr>
			<tr>
			<td>Password: <input type="password" name="userpass" required="true" maxlength="10"/></td>
			</tr>
			<tr>
			<td><input type="submit" value="Login"></td>
			<td><input type="reset" value="Reset"></td>
			</tr>			
		
		</form>
		</table>
	</body>
</html>