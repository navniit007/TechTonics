<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2px">
<% 

String url="jdbc:mysql://localhost:3306/navbase";
String user="root";
String pass="root";

	try{
		Class.forName("com.mysql.jdbc.Driver");
	
	
	Connection con;
	
		con = DriverManager.getConnection(url, user, pass);
	
	
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from users");
	while(rs.next())
	{
		%>
		
		<tr bgcolor="#DEB887">

<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>

</tr>
		
		
<%} %>		
		
		<br>
		<br>
		</table>
		<% 
		
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>


</body>
</html>