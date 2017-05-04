package mod4;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
	
	  public static Connection getConnection()
      {
        Connection con = null;
         
		try
         {
       
            
        	 
        	 String url="jdbc:mysql://localhost:3306/navbase";

            Class.forName("com.mysql.jdbc.Driver");
            
            try
            {            	
               con = DriverManager.getConnection(url,"root","root"); 
                								
           
                 
            }
            
            catch (SQLException ex)
            {
               ex.printStackTrace();
            }
         }

         catch(ClassNotFoundException e)
         {
            System.out.println(e);
         }
		return con;
   
}
	  
}
