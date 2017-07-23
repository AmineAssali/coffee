
package bd;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
public class Myconn {

	static{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection(){
		Connection con=null;
		Properties properties = new Properties();
		try {
			properties.loadFromXML(new FileInputStream("props.xml"));
			String url= properties.getProperty("url");
			String login=properties.getProperty("user");
			String password=properties.getProperty("pass");
			System.out.println(url + " : " +login + " :  "+ password);
			con  = DriverManager.getConnection(url, login, password);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			return con;
	}
    public static boolean validate(String login,String mdp){  
    	boolean status=false; 
    	try{    
    		Connection con = Myconn.getConnection(); 
    		PreparedStatement ps=con.prepareStatement(  
    		"select * from compte where login=? and mdp=?");  
    		ps.setString(1,login);  
    		ps.setString(2,mdp);      
    		ResultSet rs=ps.executeQuery();  
    		status=rs.next();            
    		}catch(Exception e){System.out.println(e);}  
    		return status;  
    		}
    
}	
