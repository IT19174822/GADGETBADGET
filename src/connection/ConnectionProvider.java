package connection;
import java.sql.*;

public class ConnectionProvider {
	public static Connection getCon()
	{ 
		
		
			try{  
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test?serverTimezone=UTC", "root", "");
				return con; 
	} catch (Exception e)
			
	{
		e.printStackTrace();
		return null;
		} 
			
			

}
}
