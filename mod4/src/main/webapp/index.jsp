<%@ page language="java" 
    contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"
%>



<html>
	<head>
                                <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
		<title>Login Page</title>
		
		
		<script>
		
		function foradmin()
		{
		    if(   document.getElementById("auid").value == "admin"
		       && document.getElementById("apid").value == "admin007" )
		    {
		        alert( "Login Successful.." );
		        location.href="Welcome1Page.jsp";
		    }
		    else
		    {
		        alert( "Please Enter Correct userID or Password" );
		        location.href="index.jsp";
		    }
		}
		
		</script>
		
		
	</head>

	<body bgcolor="cyan">
	<header><center><h2>TechTonics@ATMECS Technologies</h2></center></header>
	
		<nav style="width:150 height:100 color:cyan">
		<h4>Existing Employee Login</h4>
		<a href="Login.jsp"><h2>Login</h2></a>
		</nav>		
	
		<nav style="width:150 height:100 color:yellow">
		<h4>For New Employee Signup</h4>
		<a href="Register.jsp"><h2>Register</h2></a>
		</nav>	
		
		<br>
		<br>
		<form name=adminform action="Welcome1Page.jsp" method="post">
		
		<table width=200 height=100 border=2px>
		<tr>
		<td><h3>Admin Panel</h3></td>
		</tr>
		<tr>
		<td>Admin Username: <input type="text" name="auser" id="auid" required="true" maxlength="10"></td>
		</tr>
		<tr>
		<td>Admin Password: <input type="password" name="apass" id="apid" required="true" maxlength="10"></td>
		</tr>
		<tr>
		<td>UserType: <input type="text" name="atype" value="admin" readonly="true"></td>
		<td><input type="submit" value="Login" onclick="foradmin()"></td>
		<td><input type="reset" value="Reset"></td>
		</tr>
		</table>
		
		</form>
		
		
		
		
	</body>
</html>