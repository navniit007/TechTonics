

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String n=request.getParameter("dname");  
		String p=request.getParameter("tname");  
		String e=request.getParameter("descname");  
		String c=request.getParameter("pname");  
		        
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/navbase", "root", "root");
		  
		PreparedStatement ps=con.prepareStatement("insert into repository values(?,?,?,?)");  
		  
		ps.setString(1,n);  
		ps.setString(2,p);  
		ps.setString(3,e);  
		ps.setString(4,c);  
		          
		int i=ps.executeUpdate();  
		if(i>0)  
		out.println("You are successfully Entered data...");
		out.print("<a href='index.jsp'><h2>Home</h2></a>");
		      
		          
		}catch (Exception e2) {System.out.println(e2);}  
		          
		out.close();  
		
		
	}

}
