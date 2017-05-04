<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
 function respo()
 {
 alert("Thankyou for your response");
 }
</script>
</head>
<body>

<%

//response.setContentType("text/html");  
String name=request.getParameter("username");
out.print("Welcome "+name);
%>
<br><br>

<% 

String url="jdbc:mysql://localhost:3306/navbase";
String user="root";
String pass="root";

	try{
		Class.forName("com.mysql.jdbc.Driver");
	
	
	Connection con;
	
		con = DriverManager.getConnection(url, user, pass);
	
	
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from repository");
	while(rs.next())
	{
		out.println(rs.getString(1)+"  |  "+rs.getString(2)+"  |  "+rs.getString(3)+"  |  "+rs.getString(4));%><button onclick="respo();">Accept</button><button onclick="respo();">Reject</button>
		
		<br>
		<br>
		<% 
		
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>

<a href="index.jsp"><b>Logout</b></a>
</body>
</html>