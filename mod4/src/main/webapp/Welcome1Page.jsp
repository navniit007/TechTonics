<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
 function resp1()
 {
 //alert("Thankyou for your response");
 //document.getElementById(b1).disabled = 'true';
 //document.getElementById(b2).disabled = 'true';
	
    var person = prompt("Please enter your name");
    if (person != null) {
        document.getElementById("b1").innerHTML =
        "Hello " + person + "! How are you today?";
    }

 }
 
 function dbenter()
 {
	 Class.forName("com.mysql.jdbc.Driver");  
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/navbase", "root", "root");
		  
		PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?)");
 }
 
 </script>
</head>
<body>

<%

//response.setContentType("text/html");  
String name=request.getParameter("auser");
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
		out.println(rs.getString(1)+"  |  "+rs.getString(2)+"  |  "+rs.getString(3)+"  |  "+rs.getString(4));%><a href="DeleteServlet""><b>Delete</b></a>
		
		<br>
		<br>
		
		<% 
		
	}
	%>
	<h3>Add New TechTalk Here</h3>
		<a href=Add.jsp>Click to Insert Data</a>
		
		<h3>View All Users</h3>
		<a href=view.jsp>Click to view all users</a>
		<%
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>
<br>
<br>
<a href="index.jsp"><b>Logout</b></a>
</body>
</html>